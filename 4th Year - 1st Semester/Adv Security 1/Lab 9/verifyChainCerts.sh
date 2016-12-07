# check self-signed cert
openssl x509 -in selfsigned-cert.pem -text -noout

# check CSR cert in part 2
openssl req -in csr.pem -text -noout