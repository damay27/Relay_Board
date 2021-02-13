import serial

ACK = 'A'
NACK = 'N'
RELAY_ON = 'O'
RELAY_OFF = 'F'
WATCH_DOG_ENABLE = 'W'
WATCH_DOG_TIMEOUT = 'T'
WATCH_DOG_DISABLE = 'D'
WATCH_DOG_UPDATE = 'U'
LOAD_DETECT = 'L'

class Relay:

    def __init__(self, serial_port_name):
        self.port = serial.Serial(serial_port_name, timeout = 2.0)

    def send_command(self, command):
        self.port.write(bytes(command, "utf-8"))
        response = self.port.read()
        if(response != bytes(ACK, "utf-8")):
            return False
        return True

    def relay_on(self):
        return self.send_command(RELAY_ON)

    def relay_off(self):
        return self.send_command(RELAY_OFF)

    def watch_dog_enable(self):
        return self.send_command(WATCH_DOG_ENABLE)

    def watch_dog_disable(self):
        return self.send_command(WATCH_DOG_DISABLE)

    def watch_dog_set_timeout(self, timeout):
        self.port.write(bytes(WATCH_DOG_TIMEOUT, "utf-8"))
        self.port.write(bytes([timeout]))
        response = self.port.read()
        if(response == bytes(ACK, "utf-8")):
            return True
        else:
            return False

    def feed_watch_dog(self):
        return self.send_command(WATCH_DOG_UPDATE)

    def load_detected(self):
        self.port.write(bytes(LOAD_DETECT, "utf-8"))
        response = self.port.read()
        if(response == bytes('1', "utf-8")):
            return True
        else:
            return False

    