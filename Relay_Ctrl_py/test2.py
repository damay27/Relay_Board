# import serial
# import time

# port = serial.Serial("COM6")

# a = 10000 >> 8
# b = 10000 & 255

# # port.write(bytes('T', 'utf-8'))
# # port.write(bytes([a, b]))

# port.write(bytes('O', 'utf-8'))
# print(port.read())
# time.sleep(5)

# # port.write(bytes('W', 'utf-8'))


# for i in range(30):
#     time.sleep(1)
#     ###
#     port.write(bytes('C', 'utf-8'))

#     # print(port.read())
#     # print(port.read())
#     if(i == 15):
#         port.write(bytes('F', 'utf-8'))
#         print("----------------------------------------------")

#     x = int.from_bytes(port.read(), byteorder='little') << 8
#     print(bin(x))

#     x |= int.from_bytes(port.read(), byteorder='little')
#     print(bin(x))
#     print(x)




# time.sleep(5)
# port.write(bytes('F', 'utf-8'))
# port.read()

# # while(1):
# #     time.sleep(1)
# #     port.write(bytes('U', 'utf-8'))




# ##################################################################


# # import serial
# # import time

# # port = serial.Serial("COM4", timeout = 2)
# # count = 0
# # while(1):
# #     time.sleep(5)
# #     port.write(bytes('O', 'utf-8'))
# #     # print(port.read())
# #     time.sleep(5)
# #     port.write(bytes('F', 'utf-8'))
# #     # print(port.read())
# #     count += 1
# #     print(count)
# #     print("-------------------------------")



import serial
import time

port = serial.Serial("COM3")

a = 10000 >> 8
b = 10000 & 255

# port.write(bytes('T', 'utf-8'))
# port.write(bytes([a, b]))

port.write(bytes('O', 'utf-8'))
print(port.read())
time.sleep(5)

# port.write(bytes('W', 'utf-8'))

x = 0
while(1):
    ###
    port.write(bytes('O', 'utf-8'))
    time.sleep(5)
    port.write(bytes('F', 'utf-8'))
    time.sleep(5)
    print("----------------------------------------------")
    print(x)
    x += 1




time.sleep(5)
port.write(bytes('F', 'utf-8'))
port.read()

# while(1):
#     time.sleep(1)
#     port.write(bytes('U', 'utf-8'))




##################################################################


# import serial
# import time

# port = serial.Serial("COM4", timeout = 2)
# count = 0
# while(1):
#     time.sleep(5)
#     port.write(bytes('O', 'utf-8'))
#     # print(port.read())
#     time.sleep(5)
#     port.write(bytes('F', 'utf-8'))
#     # print(port.read())
#     count += 1
#     print(count)
#     print("-------------------------------")

