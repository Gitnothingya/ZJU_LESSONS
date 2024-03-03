from machine import Pin
from umqtt.simple import MQTTClient
import time
import dht

def dhttest():
    d = dht.DHT11(Pin(4))
    d.measure()   
    return "temp:"+str(d.temperature())+" hum:"+str(d.humidity())

def main():
    print("Welcome to RT-Thread MicroPython!")

    led = Pin(2, Pin.OUT) 
    v = 1 # state of led

    client = MQTTClient("DHT11","192.168.43.145")
    topic = b"DHT11"

    while True:
        led.value(v)  # change state of led
        v = 1 - v

        info = dhttest()
        client.connect()
        client.publish(topic,info)
        client.disconnect()
        print("POSTED:"+info)

        led.value(v)
        v = 1 - v
        time.sleep(5)

if __name__ == '__main__':
    main()