#!/bin/bash

openssl req  -new -x509 -days 365 -nodes -out ssl.pem -keyout ssl.pem
