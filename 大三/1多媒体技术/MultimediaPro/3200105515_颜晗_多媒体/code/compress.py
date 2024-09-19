from const import Const
import util
from PIL import Image
import numpy as np

cc = Const()

def rgb2yuv(R, G, B):
    Y = 0.299 * R + 0.587 * G + 0.114 * B -128
    Cb = -0.1687 * R - 0.3313 * G + 0.5 * B 
    Cr = 0.5 * R - 0.4187 * G - 0.0813 * B 
    return Y, Cb, Cr

def imageFill(y:np.ndarray,Cb:np.ndarray,Cr:np.ndarray, width:int, height:int):
    # 图像填充的高度和宽度
    width_  =  0 if width  % 16 ==0 else (16 - (width  % 16))
    height_ =  0 if height % 16 ==0 else (16 - (height % 16))
    
    #进行图像填充，填充模式为边缘值填充
    y = np.pad(y, ((height_ - (height_//2),height_//2),(width_ - (width_//2),width_//2)),'edge')
    Cb = np.pad(Cb, ((height_ - (height_//2),height_//2),(width_ - (width_//2),width_//2)),'edge')
    Cr = np.pad(Cr, ((height_ - (height_//2),height_//2),(width_ - (width_//2),width_//2)),'edge')

    return y , Cb, Cr


def subSample(data:np.ndarray, flag):
    if flag =="Y" :
        pass # “Y”分量不需要采样处理
    elif flag == "Cb" or flag == "Cr" :
        data = data[0::2,0::2]  # 切片， 从左到右，从高到低，每两个点取一个值，即四个点取左上角的值
        pass
    else :
        print("ERROR")
        return None
    h , w = data.shape  # 获取采样后的矩阵大小
    vdata = np.vsplit(data,h/8) # 对数据进行水平切分，获得垂直高度为8的二维矩阵的列表
    data_blocks = np.array(np.hsplit(vdata[0],w/8)) # 对水平切分后的第一个矩阵进行垂直切分，获得8*8大小的矩阵列表，转换成ndarray类型
    for i  in range(1, h//8):
        #对后续的的矩阵依次进行垂直切分并添加到结果的尾部
        tmp = np.array(np.hsplit(vdata[i],w/8))  
        data_blocks = np.append(data_blocks,tmp,0)
    return data_blocks #返回结果


def DCT(block):
    # DCT  F() =  A * f() * AT
    # 利用分离基进行dct变换，配合np库点乘的并行优化，大大缩短了计算时间
    tmp = np.dot(cc.dctA, block)
    tmp = np.dot(tmp, np.transpose(cc.dctA))
    return tmp

def DCTs(blocks):
    nb = blocks.shape[0]#number of blocks
    for i in range(nb):
        blocks[i] = DCT(blocks[i])
    return blocks

def myQTround(Qx): # 进行量化矩阵的舍入，为了精简代码可以通过numpy库矢量化
        if Qx > 255:
                Qx = 255
        return Qx

def changeQT(qf): # 根据质量因子改变量化矩阵
    myQTround_vec =  np.vectorize(myQTround)
    if qf >= 50 :
        scaling_factor = (100-qf) /50
    else:
        scaling_factor = (50 / qf)
    if scaling_factor != 0: # qf不为0
        cc.LQT = myQTround_vec((cc.LQT*scaling_factor))
        cc.CQT = myQTround_vec((cc.CQT*scaling_factor))
    else:
        cc.LQT = np.ones(64).reshape(8,8) #全1矩阵，不进行量化
        cc.CQT = np.ones(64).reshape(8,8)


def Quantize(block, tag):
    #量化，分色度和亮度
    res = block
    if tag == cc.Ctag : 
        res = np.round(res / cc.CQT)
    elif tag == cc.Ltag :
        res = np.round(res / cc.LQT)
    else :
        print("ERROR in Quantize")
        
    return res

def QuantizeAllblocks(blocks, tag):
    nb = blocks.shape[0]#块数量
    for i in range(nb): # 分块逐一进行量化
        blocks[i] = Quantize(blocks[i], tag)
    return blocks

def ZigZag(block)->list: # 通过列表推导式进行矩阵的扁平化和zigzag编码，即重新排序
    return [block.flatten()[i] for i in cc.ZagZig.flatten()]

def RLE(zz_list) ->list :# 游程编码，实际上包括了DC系数，（0，DC）...
    endpos = 63
    while endpos>0 and zz_list[endpos] ==0 :# 寻找最后一个不为0的数，如果在数据末尾，不需要添加EOB，否则需要添加EOB
        endpos -= 1

    zCount = 0 # 计数0
    res = []   # 最终结果，tuple列表
    res.append((0,zz_list[0])) # 将DC系数单独编码，防止DC残差为0
    for pos in range(1,endpos+1): # 从第一个AC系数到最后非0数遍历
        if zz_list[pos] ==0 and zCount < 15: # 逐一记录0的个数
            zCount += 1
        elif zz_list[pos] ==0 and zCount >= 15 : # 中间有多个0，但是只能一次编码16个
            res.append((15,0))
            zCount=0
        else:
            res.append((zCount,zz_list[pos])) # 遇到非0数，添加元素
            zCount=0
    if endpos !=63 :
        res.append((0,0)) # 添加EOB

    return res

def getOneHuffumanCode(tu:tuple, arg0: str, arg1:str): # 获取游程编码一个元素的霍夫曼编码，包括频率，幅值长度，幅值编码
    valueCode = ""
    if tu[1] == 0: # AC编码（F,0）和EOB（0，0）需要特殊处理，因为0没有值编码，没有幅值长度
        newtu = tu
    else:
        valueCode = util.getValueCode(tu[1])# 获取幅值的编码，实际为 可变长反码 的表示形式
        l = len(valueCode)
        newtu = (tu[0],l) # 将频率和幅值长度组合，下面根据颜色空间和系数类型查找霍夫曼字典
    if arg0 == "Y" and arg1 == "DC":
        luRet = cc.Y_DC_HT[(newtu[0]<<4)+newtu[1]] # 频率和幅值长度需要组合成一个字节再查表
    elif arg0 == "Y" and arg1 == "AC":
        luRet = cc.Y_AC_HT[(newtu[0]<<4)+newtu[1]]
    elif arg0 == "Ch" and arg1 == "DC":
        luRet = cc.CbCr_DC_HT[(newtu[0]<<4)+newtu[1]]
    elif arg0 == "Ch" and arg1 == "AC":
        luRet = cc.CbCr_AC_HT[(newtu[0]<<4)+newtu[1]]
    else :
        print(arg0,arg1)
        print("ERROR in getOneHuffumanCode")
        return None

    return luRet+valueCode

def doHuffumanCoding(tplist:list, flag:str): # 对一个8*8块的一个分量进行霍夫曼编码，传入的是进行了游程编码的列表
    ret = ""
    for index,element in enumerate(tplist): # 遍历列表，对每个tuple元素进行霍夫曼查表
        if index == 0: # 第一个元素为DC系数
            ret += getOneHuffumanCode(element,flag,"DC")
        else : # 其余AC系数进行编码
            ret += getOneHuffumanCode(element,flag,"AC")
    return ret


def Compress(file,quality_factor):
    img = Image.open(file)
    width,height = img.size # 获取图像大小
    #分离rgb色彩空间
    r,g,b = img.split()
    r = np.asarray(r)
    g = np.asarray(g)
    b = np.asarray(b)

    #进行颜色空间的转换并舍入
    y,Cb,Cr = rgb2yuv(r,g,b)
    y = np.around(y)
    Cr =np.around(Cr)
    Cb = np.around(Cb)

    # 进行像素值填充，将图像高和宽都填充为16的倍数
    y,Cb,Cr = imageFill(y,Cb,Cr,width,height)
    hfilled, wfilled = y.shape # 获取填充后的图像大小，便于编码

    # 进行色彩采样和图像分块，返回的是numpy的三维矩阵，三维：块序号，块内高度，块内宽度
    y_blocks = subSample(y,"Y")
    Cb_blocks = subSample(Cb,"Cb")
    Cr_blocks = subSample(Cr,"Cr")

    # 进行DCT变换
    y_blocks = DCTs(y_blocks)
    Cb_blocks = DCTs(Cb_blocks)
    Cr_blocks = DCTs(Cr_blocks)

    # 进行量化
    changeQT(quality_factor)
    y_blocks  = QuantizeAllblocks(y_blocks ,cc.Ltag).astype(int)
    Cb_blocks = QuantizeAllblocks(Cb_blocks,cc.Ctag).astype(int)
    Cr_blocks = QuantizeAllblocks(Cr_blocks,cc.Ctag).astype(int)

    # DPCM，游程编码，霍夫曼编码
    # DC编码需要计算残差，但是分散，所以需要变量记录上一个DC系数，注意不同分量的DPCM是分离的，需要分别记录
    prev_Y_DC = 0
    prev_Cr_DC = 0
    prev_Cb_DC = 0
    # 分别计算水平垂直方向块的数量，方便遍历，注意使用填充后的图像大小
    hNb = hfilled//8
    wNb = wfilled//8
    ret = ""
    with open("result.jpg","wb") as o:
        util.writeJpegHeader(o,width,height,cc)
        for i in range(0,hNb,2):
            for j in range(0, wNb,2):
                ytmp = ZigZag(y_blocks[i*wNb+j]) # 记录zigzag编码,方便执行DPCM修改DC值，游程编码后元组不方便修改
                diff = ytmp[0] - prev_Y_DC # 计算残差
                prev_Y_DC = ytmp[0].copy() # 记录DC值
                ytmp[0] = diff
                yCode1 = doHuffumanCoding(RLE(ytmp),"Y") 

                ytmp = ZigZag(y_blocks[i*wNb+j+1]) # 记录zigzag编码,方便执行DPCM，游程编码后元组不方便修改
                diff = ytmp[0] - prev_Y_DC # 计算残差
                prev_Y_DC = ytmp[0].copy() # 记录DC值
                ytmp[0] = diff
                yCode2 = doHuffumanCoding(RLE(ytmp),"Y") 

                ytmp = ZigZag(y_blocks[(i+1)*wNb+j]) # 记录zigzag编码,方便执行DPCM，游程编码后元组不方便修改
                diff = ytmp[0] - prev_Y_DC # 计算残差
                prev_Y_DC = ytmp[0].copy() # 记录DC值
                ytmp[0] = diff
                yCode3 = doHuffumanCoding(RLE(ytmp),"Y") 

                ytmp = ZigZag(y_blocks[(i+1)*wNb+j+1]) # 记录zigzag编码,方便执行DPCM，游程编码后元组不方便修改
                diff = ytmp[0] - prev_Y_DC # 计算残差
                prev_Y_DC = ytmp[0].copy() # 记录DC值
                ytmp[0] = diff
                yCode4 = doHuffumanCoding(RLE(ytmp),"Y") 

                Cbtmp = ZigZag(Cb_blocks[i*wNb//4+j//2])# 记录zigzag编码,方便执行DPCM，游程编码后元组不方便修改
                diff = Cbtmp[0] - prev_Cb_DC# 计算残差
                prev_Cb_DC = Cbtmp[0].copy()# 记录DC值
                Cbtmp[0] = diff
                CbCode   = doHuffumanCoding(RLE(Cbtmp),"Ch") 

                Crtmp = ZigZag(Cr_blocks[i*wNb//4+j//2])# 记录zigzag编码,方便执行DPCM，游程编码后元组不方便修改
                diff = Crtmp[0] - prev_Cr_DC# 计算残差
                prev_Cr_DC = Crtmp[0].copy()# 记录DC值
                Crtmp[0] = diff
                CrCode   = doHuffumanCoding(RLE(Crtmp),"Ch") 

                ret += (yCode1+yCode2+yCode3+yCode4+CbCode+CrCode)
        util.writeOneBlockCode(o,ret)
        util.writeWord(o,0xFFD9)
    # imgout = Image.open("result.jpg")
    # imgout.show()
    pass