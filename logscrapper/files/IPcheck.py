import IPy
import requests

class IPchecker:
    def __init__(self) -> None:
        self.classA = IPy.IP("10.0.0.0/8")
        self.classB = IPy.IP("172.16.0.0/16")
        self.classC = IPy.IP("192.168.0.0/16")

    def check(self,ipaddr):
        if ipaddr in self.classA:
            return False
        elif ipaddr in self.classB:
            return False
        elif ipaddr in self.classC:
            return False
        else:
            return True
        
    def geolocate(self,ipaddr):
        url = "http://ip-api.com/json/" + ipaddr
        r = requests.get(url).json()
        return r
    
    def geolocate_request(self,ipaddr):
        url = "http://ip-api.com/json/" + ipaddr
        r = requests.get(url)
        return r