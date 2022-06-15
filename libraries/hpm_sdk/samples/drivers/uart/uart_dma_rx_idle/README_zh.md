# DMA接收和发送数据UART
## 概述
***
该示例工程中，展示UART采用DMA的方式接收不定长的数据（数据量小于程序定义的BUFFER_SIZE）。

## 端口设置
***
-  串口波特率设置为``115200bps``，``1个停止位``，``无奇偶校验位``

## 硬件设置
- 连接UART发送器的TX与开发板上的RX， 连接UART发送器的GND与开发板的GND
- 连接开发板的RX与TRGMUX的输入IO

## 运行现象
***
当工程正确运行后，串口终端会输出如下信息：
```
> uart receive xxx bytes, the received data are:!

```
接收到的数据会以如下形式输出：
```
0 1 2 3 4 5 6 7 8 9
0 1 2 3 4 5 6 7 8 9
0 1 2 3 4 5 6 7 8 9
0 1 2 3 4 5 6 7 8 9
```
