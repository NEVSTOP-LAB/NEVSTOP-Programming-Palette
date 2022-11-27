import socket
import struct
import MyFunc
import json
import datetime
import time
import os

def ScanDistributedNodes(MCAST_GRP = '234.5.6.7', MCAST_PORT = 58432, DetectPeriod = 2):

    IS_ALL_GROUPS = True

    sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM, socket.IPPROTO_UDP)
    sock.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
    if IS_ALL_GROUPS:
        # on this port, receives ALL multicast groups
        sock.bind(('', MCAST_PORT))
    else:
        # on this port, listen ONLY to MCAST_GRP
        sock.bind((MCAST_GRP, MCAST_PORT))
    mreq = struct.pack("4sl", socket.inet_aton(MCAST_GRP), socket.INADDR_ANY)

    sock.setsockopt(socket.IPPROTO_IP, socket.IP_ADD_MEMBERSHIP, mreq)
    sock.settimeout(0.1)

    List = {}
    startTime = time.time()


    while(time.time() - startTime < DetectPeriod):
        try:
            jsonStr = sock.recv(10240).decode("UTF-8")
            pack = json.loads(jsonStr)
            List[pack['Host Name']] = {'Host Name': pack['Host Name'], 'IPs': pack['IPs'], 'Information': pack['Information']}
        except socket.timeout:
            pass

    sock.close()
    return List

if __name__ == '__main__':
    print(json.dumps(ScanDistributedNodes(), indent=4, sort_keys=True))
    os.system("pause")
