from machine import Pin, PWM
from machine import Timer
import time

import bluetooth

BLE_MSG = ""


class ESP32_BLE():
    def __init__(self, name):
        self.led = PWM(Pin(2))
        self.freq = PWM(Pin(2)).freq(1000)
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
        self.led.duty(1023)
        self.timer1.deinit()

    def disconnected(self):
        self.timer1.init(period=100, mode=Timer.PERIODIC, callback=lambda t: led.duty(500))
        

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
        self.ble.gatts_notify(0, self.tx, data + '\n')

    def advertiser(self):
        name = bytes(self.name, 'UTF-8')
        adv_data = bytearray('\x02\x01\x02') + bytearray((len(name) + 1, 0x09)) + name
        self.ble.gap_advertise(100, adv_data)
        print(adv_data)
        print("\r\n")





if __name__ == "__main__":
    ble = ESP32_BLE("SP32BLE")

    led = PWM(Pin(2))
    # led = Pin(2, Pin.OUT) 

    while True:
        if BLE_MSG == 'LED ON':
            print(BLE_MSG)
            for i in range(0,256):
               led.duty(i)
               time.sleep_ms(3)
            # led.value(1)
            BLE_MSG = ""
            print('LED is ON.')
            ble.send('LED is ON.')
        
        elif BLE_MSG == 'LED OFF':
            print(BLE_MSG)
            for i in range(256,-1,-1):
                led.duty(i)
                time.sleep_ms(3)
            # led.value(0)
            BLE_MSG = ""
            print('LED is OFF.')
            ble.send('LED is OFF.')

        time.sleep(50)
