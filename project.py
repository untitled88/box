#!/usr/bin/python
from socket import inet_aton
from struct import unpack
from pprint import pprint
import pyasn
import pygeoip
import json

asndb = pyasn.pyasn('ipasn_20160318.dat')
gi = pygeoip.GeoIP('GeoIP-106_20160315/GeoIP-106_20160315.dat')

with open('20090206.out') as data_file:    
    data = json.load(data_file)

print data["time"][0]

def ip2long(ip_addr):
    ip_packed = inet_aton(ip_addr)
    ip = unpack("!L", ip_packed)[0]
    return ip

#for line in open('/home/mabean2/20090206.out'):
#    second_field = line.rstrip('\n').split(',')[4].split('"')[3]
#    asnumber = asndb.lookup(second_field)
#    countryCode = gi.country_code_by_addr(second_field)
#    converted_ip = ip2long(second_field)
#    if countryCode == 'US':
#        print '\n',second_field,',',converted_ip,',',countryCode,asnumber

#    print "\n" + second_field
#    print converted_ip
#    print countryCode
#    print asnumber


