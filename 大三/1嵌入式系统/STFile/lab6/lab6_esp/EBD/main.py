import dht
from machine import Pin
from machine import Timer
import _thread
import machine
import time

import bluetooth

BLE_MSG = ""
host_addr = 120
getDataFlag = 1 # 用flag来控制线程的开启和关闭
uart = machine.UART(1, baudrate=115200, tx = 10, rx = 9) # 创建串口对象
Data_flg = 0
Request_flg = 0


class ESP32_BLE():
    def __init__(self, name):
        self.led =  Pin(2, Pin.OUT)
        self.timer1 = Timer(0)
        self.name = name
        self.ble = bluetooth.BLE()
        self.ble.active(True)
        self.ble.config(gap_name=name)
        self.disconnected()
        self.ble.irq(self.ble_irq)
        self.register()
        self.advertiser()

    def connected(self):
        self.led.value(1)
        self.timer1.deinit()

    def disconnected(self):
        self.timer1.init(period=100, mode=Timer.PERIODIC, callback=lambda t: self.led.value(0))
        

    def ble_irq(self, event, data):
        global BLE_MSG
        if event == 1: #_IRQ_CENTRAL_CONNECT 手机链接了此设备
            self.connected()
        elif event == 2: #_IRQ_CENTRAL_DISCONNECT 手机断开此设备
            self.advertiser()
            self.disconnected()
        elif event == 3: #_IRQ_GATTS_WRITE 手机发送了数据 
            buffer = self.ble.gatts_read(self.rx)
            BLE_MSG = buffer.decode('UTF-8').strip()
            
            
    def register(self):        
        service_uuid = '6E400001-B5A3-F393-E0A9-E50E24DCCA9E'
        reader_uuid = '6E400002-B5A3-F393-E0A9-E50E24DCCA9E'
        sender_uuid = '6E400003-B5A3-F393-E0A9-E50E24DCCA9E'

        services = (
            (
                bluetooth.UUID(service_uuid), 
                (
                    (bluetooth.UUID(sender_uuid), bluetooth.FLAG_READ | bluetooth.FLAG_NOTIFY), 
                    (bluetooth.UUID(reader_uuid), bluetooth.FLAG_WRITE),
                )
            ), 
        )

        ((self.tx, self.rx,), ) = self.ble.gatts_register_services(services)

    def send(self, data):
        self.ble.gatts_write(self.tx, data + '\n')

    def advertiser(self):
        name = bytes(self.name, 'UTF-8')
        adv_data = bytearray(b'\x02\x01\x02') + bytearray((len(name) + 1, 0x09)) + name
        self.ble.gap_advertise(100, adv_data)
        print(adv_data)
        print("\r\n")


def dhtdata():
    d = dht.DHT11(Pin(4))
    d.measure()   
    return str(d.temperature())+" "+str(d.humidity())


def main():
    ble = ESP32_BLE("ESP32Node120")
    global BLE_MSG
    while True:
        if uart.any(): # 如果串口接收到了数据
            GetStm = str(uart.read()) # 读取串口数据
            print("Received FROM STM32:", GetStm) # 打印
            # uart.write(dhtdata()+'\n')
            # part = GetStm.split(" ")
            # print(part)
            # if part[0] == "request":
                # global Request_flg
                # Request_flg = 1
            uart.write("100 "+dhtdata()+"\n")
            print("sendtoSTM","100 "+dhtdata())
            # else :
            #     ble.send(GetStm)
        if BLE_MSG != "":
            print("get from phone:"+str(BLE_MSG))
            if BLE_MSG == "request all":
                ble.send("120 1;")
                BLE_MSG = ""
            else:
                uart.write(str(BLE_MSG)+"\n")
                BLE_MSG = ""

if __name__ == "__main__":
    main()