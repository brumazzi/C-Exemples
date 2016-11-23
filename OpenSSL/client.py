#!/usr/bin/env python2.7

import OpenSSL as ssl
import socket as sk
import struct
from sys import argv

if argv[1] == "" or argv[2] == "":
    sys.exit()

context = ssl.SSL.Context(ssl.SSL.TLSv1_METHOD);

s = sk.socket(sk.AF_INET, sk.SOCK_STREAM);
s.settimeout(5);

conn = ssl.SSL.Connection(context,s);
conn.connect((str(argv[1]), int(argv[2])));

conn.setblocking(1);

tv = struct.pack('ii',int(6),int(0));
#conn.setsockopt(sk.SOL_SOCKET, sk.SO_RCVTIMEO, tv);

print "Connected to", conn.getpeername();
print "Sate", conn.state_string();

try:
    conn.do_handshake()
except ssl.SSL.WantReadError:
    print "Timeout";
    quit();

print "Sate", conn.state_string();

print "Transmitted %d bytes" % conn.send("Enviando uma mensagem de texto para teste de envio de dados!");

f = open("client.c","r");
print "Transmitted %d bytes" % conn.send(f.read());

try:
    recvstr = conn.recv(1024)
except ssl.SSL.WantReadError:
    print "Timeout"
    quit()

print recvstr
