import _thread
import machine
import time

getDataFlag = 1 # 用flag来控制线程的开启和关闭
uart = machine.UART(1, baudrate=115200, tx = 10, rx = 9) # 创建串口对象

# 定义接收103数据的线程函数
def getData():
    while getDataFlag:
        if uart.any(): # 如果串口接收到了数据
            data = uart.read() # 读取串口数据
            print("Received data:", str(data)) # 打印

_thread.start_new_thread(getData, ()) # 添加并开启线程