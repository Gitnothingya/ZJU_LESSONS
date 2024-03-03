import dht
from machine import Pin

import _thread
import machine
import time

def dhtdata():
    d = dht.DHT11(Pin(4))
    d.measure()   
    return "temp:"+str(d.temperature())+" hum:"+str(d.humidity())


getDataFlag = 1 # 用flag来控制线程的开启和关闭
GetDHT = 0
SendToPhone = 0
uart = machine.UART(1, baudrate=115200, tx = 10, rx = 9) # 创建串口对象

# 定义接收103数据的线程函数
def getData():
    while getDataFlag:
        if uart.any(): # 如果串口接收到了数据
            data = str(uart.read().decode("utf-8")) # 读取串口数据
            print("Received FROM STM32:", data) # 打印
            # uart.write(dhtdata()+'\n')
            if data == "request":
                global GetDHT
                GetDHT = 1
            else :
                global SendToPhone
                SendToPhone = 1


_thread.start_new_thread(getData, ()) # 添加并开启线程


def main():
    while True:
        if GetDHT == 1:
            uart.write(dhtdata()+'\n')
        elif SendToPhone == 1:
            print("TODO")

if __name__ == '__main__':
    main()