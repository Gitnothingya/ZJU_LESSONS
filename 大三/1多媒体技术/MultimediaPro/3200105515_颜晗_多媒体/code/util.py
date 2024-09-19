from const import Const

def getOneComponent(str):
    l = len(str)
    n = "".rjust(l,"1")
    return bin(int(str,2)^(int(n,2)))[2:].zfill(l)


def getValueCode(value:int):
    if value > 0 :
        return bin(value)[2:]
    elif value < 0:
        return getOneComponent(bin(value)[3:])
    else :
        print("error in getValueCode")
        return None
    
import io
def writeByte(o:io.BufferedWriter , value:int):
    o.write(value.to_bytes(1,"big")) #写入一个字节

def writeWord(o:io.BufferedWriter , value:int):
    o.write(value.to_bytes(2,"big")) #大端序写入一个字（16bit）

def writeListOneByOne(o:io.BufferedWriter , value:list):
    """
    此函数用于写入标准的霍夫曼编码表和量化表,以及头部
    """
    for element in value:
        writeByte(o,element) # 依次写入列表中的值，单字节，

def writeOneBlockCode(o:io.BufferedWriter, code:str):
    """
    此函数用于写入经过霍夫曼编码的块
    传入编码为二进制的字符串形式
    """
    l = len(code)
    
    bNb = l//8  # 即一个二进制字符串表示的字节数
    if l%8 != 0: #最后无法表示一个完整字节，需填充
        bNb += 1
        code =code.ljust(bNb*8,"1")
    for i in range(bNb): #遍历字符串
        tmp = int(code[i*8:i*8+8],2)
        writeByte(o,tmp)
        if tmp == 0xFF:
            writeByte(o,0)

    
def writeJpegHeader(o:io.BufferedWriter, width:int,height:int,cc:Const):
    """
    分段写入一个jpeg文件头，由于基本使用标准表，只需要传入图像的高和宽，其余为定值
    """
    # SOI
    writeWord(o,0xFFD8)

    #APP0
    APP0 = [0xFF ,0xE0 ,0x00 ,0x10 ,0x4a ,0x46 ,0x49 ,0x46 ,0x00 ,0x01 ,0x01 ,
            0x00 ,0x00 ,0x01 ,0x00 ,0x01 ,0x00 ,0x00 ]
    writeListOneByOne(o,APP0)

    #DQT定义量化表
        #亮度量化表
    writeWord(o,0xFFDB)
    writeWord(o,0x0043)
    writeByte(o,0x00)
    writeListOneByOne(o,cc.LQT.astype(int).flatten().tolist())

        #色度量化表
    writeWord(o,0xFFDB)
    writeWord(o,0x0043)
    writeByte(o,0x01)
    writeListOneByOne(o,cc.CQT.astype(int).flatten().tolist())

    # SOF0
    SOF0 = [0xFF, 0xC0, 0x00, 0x11, 0x08]
    writeListOneByOne(o,SOF0)
    writeWord(o,height)
    writeWord(o,width)
    SOF0 = [0x03, 0x01,0x22,0x00, 0x02,0x11,0x01, 0x03,0x11,0x01]
    writeListOneByOne(o,SOF0)

    # DHT定义霍夫曼表
    DHT = [0xFF, 0xc4, 0x00, 0x1f, 0x00 ]
    writeListOneByOne(o,DHT)
    writeListOneByOne(o,cc.Std_DC_LU_NRCodes)
    writeListOneByOne(o,cc.Std_DC_LU_Values)
    DHT = [0xFF, 0xc4, 0x00, 0xb5, 0x10 ]
    writeListOneByOne(o,DHT)
    writeListOneByOne(o,cc.Std_AC_LU_NRCodes)
    writeListOneByOne(o,cc.Std_AC_LU_Values)
    DHT = [0xFF, 0xc4, 0x00, 0x1f, 0x01 ]
    writeListOneByOne(o,DHT)
    writeListOneByOne(o,cc.Std_DC_CH_NRCodes)
    writeListOneByOne(o,cc.Std_DC_CH_Values)
    DHT = [0xFF, 0xc4, 0x00, 0xb5, 0x11 ]
    writeListOneByOne(o,DHT)
    writeListOneByOne(o,cc.Std_AC_CH_NRCodes)
    writeListOneByOne(o,cc.Std_AC_CH_Values)

    # SOS 扫描开始行
    SOS = [0xFF,0xDA, 0x00,0x0C, 0x03, 0x01,0x00, 0x02,0x11, 0x03,0x11, 0x00,0x3f,0x00]
    writeListOneByOne(o, SOS)
    pass
