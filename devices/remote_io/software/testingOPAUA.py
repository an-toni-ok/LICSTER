#!/usr/bin/env python3
import time
from opcua import Client

url = "opc.tcp://admin:admin@192.168.0.61:4840"

client= Client(url)

client.connect()
print("Client Connected")

while True:
    output1 = client.get_node("ns=1;s=Control Output 1.")
    output1.set_value(True)
    time.sleep(1)
    output1Value = output1.get_value()
    print("Value should be True and is: " + str(output1Value))
    time.sleep(1)
    output1.set_value(False)
    time.sleep(1)
    output1Value = output1.get_value()
    print("Value should be False and is: " + str(output1Value))
    time.sleep(1)
