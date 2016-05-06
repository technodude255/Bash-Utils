#!/bin/bash

sudo iw dev #Locate available wifi adapters

sudo ip link show wlan0 #Check device status

sudo ip link set wlan0 up #Bring up wifi interface

sudo ip link show wlan0 #Check again device status 

sudo iw wlan0 link #Check connection status

sudo iw wlan0 scan |grep SSID #Scan wifi network SSID's


 