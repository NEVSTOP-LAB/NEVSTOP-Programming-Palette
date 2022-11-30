import socket
import struct
import MyFunc
import json
import datetime
import time
import os

def IP_Reporter(Information):
  # MCAST_GRP = '234.5.6.7'
  # MCAST_PORT = 58432  
  MCAST_GRP,MCAST_PORT = MyFunc.func_GetIniConfiguration()

  sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM, socket.IPPROTO_UDP)
  sock.setsockopt(socket.IPPROTO_IP, socket.IP_MULTICAST_TTL, 32)
  #sock.sendto(bytes('Hello World!',"UTF-8"), (MCAST_GRP, MCAST_PORT))
  
  pack = {}
  pack["Host Name"] = MyFunc.func_GetHostName()
  pack["IPs"] = MyFunc.func_GetIPList()
  pack["Timestamp"] = str(datetime.datetime.now())
  pack["Information"] = Information

  try:
    while(True):      
      pack["Timestamp"] = str(datetime.datetime.now())
      jsonStr = json.dumps(pack)
      print(json.dumps(pack, indent=4, sort_keys=True))
      sock.sendto(bytes(jsonStr,"UTF-8"), (MCAST_GRP, MCAST_PORT))
      time.sleep(1)
  
  # Ctrl+C 停止程序
  except KeyboardInterrupt:
      print("Press Ctrl-C to terminate while statement")
      pass

  sock.close()

if __name__ == '__main__':
  IP_Reporter("TEST")  
  os.system("pause")