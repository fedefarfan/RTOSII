# Copyright 2022
# Redistribution and use in source and binary forms, with or without modification, 
# are permitted provided that the following conditions are met:
# 
# 1. Redistributions of source code must retain the above copyright notice, this 
#    list of conditions and the following disclaimer.
# 
# 2. Redistributions in binary form must reproduce the above copyright notice, 
#    this list of conditions and the following disclaimer in the documentation 
#    and/or other materials provided with the distribution.
# 
# 3. Neither the name of the copyright holder nor the names of its contributors 
#    may be used to endorse or promote products derived from this software without 
#    specific prior written permission.
# 
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND 
# ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED 
# WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. 
# IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, 
# INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT 
# NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR 
# PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, 
# WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) 
# ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY 
# OF SUCH DAMAGE.
# 
import unittest
import serial
import time
from serial_init import *

def send_receive( port , tosend): 
    port.write( tosend.encode() )
    print("Sent: " + tosend)
    r = port.readall().decode('utf-8')  
    print("Received: " + r)
    return r
 
class unit_tests(unittest.TestCase):

    def setUp(self) -> None:
        
        #seleccion de puerto serie
        puerto = serial_choose()
        # print("Puerto serie elegido : " + puerto)

        #declaro el objeto de puerto serie (sin abrirlo)
        self.Port = serial.Serial()
        
        #parametros del puerto serie
        self.Port.port       = puerto
        self.Port.baudrate   = 115200
        self.Port.bytesize   = serial.EIGHTBITS      # number of bits per bytes # SEVENBITS
        self.Port.parity     = serial.PARITY_NONE    # set parity check: no parity # PARITY_ODD
        self.Port.stopbits   = serial.STOPBITS_ONE   # number of stop bits # STOPBITS_TWO
        self.Port.timeout    = .1                     # non-block read

        try:

            self.Port.open()
            self.Port.flushInput()       # flush input buffer, discarding all its contents
            self.Port.flushOutput()      # flush output buffer, aborting current output
                            # and discard all that is in buffer
            
        except Exception as e:
            print("Error abriendo puerto serie.\n" + str(e) + '\nFin de programa.')
            exit()

    def tearDown(self) -> None:
        # print("closing port")
        self.Port.close()

    def test_echo(self):
        # print("executing echo test")
        tstmsg = '(0000CHelloE9)'
        expmsg = '(0000Chello8D)'
        self.assertEqual( expmsg , send_receive( self.Port , tstmsg) )
 
    

if __name__ == '__main__':
    unittest.main()
