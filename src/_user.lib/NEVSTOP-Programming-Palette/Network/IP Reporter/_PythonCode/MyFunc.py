import socket
import configparser

def func_GetHostName():
    hostname = socket.gethostname()
    return hostname

def func_GetIPList(ipV4Only = True, IgnoreGateway = True):
    hostname = socket.gethostname()
    ip = socket.gethostbyname(hostname)
    addrs = socket.getaddrinfo(hostname,None)  
    ipList = [item[4][0] for item in addrs]   
    if(IgnoreGateway == True):
        ipList = [item for item in ipList if not item.endswith('.1')]

    if(ipV4Only == True):
        ipV4List = [item for item in ipList if ':' not in item]
        return ipV4List
    else:
        return ipList

def func_GetIniConfiguration():
    
    udp_multicast_ip = "234.5.6.7"
    udp_multicast_port = 58432

    try:
        cf = configparser.ConfigParser()
        cf.read("IP Reporter.ini")
        udp_multicast_ip = str(cf.get("Settings","address").replace("\"",""))
        udp_multicast_port = int(cf.get("Settings","receiver port").replace("\"",""))
    except IOError:
        pass

    return udp_multicast_ip,udp_multicast_port


if __name__ == '__main__':
    print(func_GetHostName())
    print(func_GetIPList(IgnoreGateway = False))
    print(func_GetIniConfiguration())