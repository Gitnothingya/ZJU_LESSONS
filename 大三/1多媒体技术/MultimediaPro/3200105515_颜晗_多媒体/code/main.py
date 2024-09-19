import compress

def main():
    print("请输入文件名（图像根目录为'resource'），最终结果保存在工程根目录下，名为'result.jpg'")
    print(">>> ",end = '')
    Fpath = input()

    print("请输入压缩的质量因子，范围为1~100，1质量最差，100最好")
    print(">>> ",end = '')
    qf = int(input())

    compress.Compress("resource/"+Fpath, qf)
    print("压缩结束")

if __name__ == '__main__':
    main()