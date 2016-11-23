import OpenSSL as ssl
import socket as sk

context = ssl.SSL.Context(ssl.SSL.TLSv1_METHOD);

s = sk.socket(sk.AF_INET, sk.SOCK_STREAM);
s.settimeout(5);
