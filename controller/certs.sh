#!/usr/bin/env bash

#Update your root cert information
country=ES
state=PA
locality=A
organization=Uniovi
organizationalunit=SE
commonname=PhD
email=abc@xyz.com
password=antonio

# generate the root certificates
cd certs

echo "Generating Root Cert.."
openssl genrsa -des3 -passout pass:$password -out ca.key 4096
openssl req -new -x509 -days 365 -key ca.key -out ca.crt -passin pass:$password -subj "/C=$country/ST=$state/L=$locality/O=$organization/OU=$organizationalunit/CN=$commonname/emailAddress=$email"

node ../SDPController/genCredentials.js 1
node ../SDPController/genCredentials.js 2
node ../SDPController/genCredentials.js 3