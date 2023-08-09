# Forth-for-microcontrollers
My first steps into forth for STM32's (Mecrisp Forth).

Trying to learn Forth and running it on various MCU's. 
Mainly STM32's but probably some RP2040 somewhere down the line.

The first uplad is based very much on jephthai's fantastic video: https://www.youtube.com/watch?v=dvTI3KmcZ7I

The aim is to create two files when ever I get a new idea, one with comments and "proper" indentation and one allowing for easy copy and paste into the serial terminal.
Each file will be MCU specific, since I will be writing and reading specific memory addresses, although some words may be cross-compatible.

If you for some reason would like to try some of this code you will need:
  - To download Mecrisp and flash that to your MCU of choice.
  - A usb to serial converter (Think FTDI or CH343 (or alternatively, for bonus points, you could use another MCU)).
  - A serial terminal program. I use PuTTy.
