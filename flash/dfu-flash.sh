#!/bin/bash
# Flashes a dfu bootloader with a given file
HEX_FILE=$1
sudo dfu-programmer atmega32u4 erase
sudo dfu-programmer atmega32u4 flash $HEX_FILE
sudo dfu-programmer atmega32u4 start
echo "Your device has been flashed!"
