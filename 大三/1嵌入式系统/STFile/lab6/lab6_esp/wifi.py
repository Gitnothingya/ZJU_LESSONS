import network
wlan = network.WLAN(network.STA_IF)
wlan.active(True)
wlan.connect('yanhanwf', 'yh030131') # change to my wifi and password
while not wlan.isconnected():
    pass
print('Wi-Fi connected')
wlan.ifconfig() #show ip address