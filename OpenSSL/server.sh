openssl s_server -accept 5000 -cert cert -key key
openssl s_client -connect localhost:5000
