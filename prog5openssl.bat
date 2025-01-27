Generate RSA Key Pairs:
$ openssl genpkey -algorithm RSA -out privatekey.pem -pkeyopt rsa_keyge_bits 1024
$ openssl rsa -pubout -in privatekey.pem -out publickey.pem

Encryption and Decryption using RSA:
$ openssl rsautl -encrypt -inkey publickey.pem -pubin -in message.txt -out message.rsa
$ openssl rsautl -decrypt -inkey privatekey.pem -in message.rsa -out message.dec

Generate ECC Key Pairs:
$ openssl ecparam -genkey -name secp256k1 -noout -out ecc_private_key.pem
$ openssl ec -in ecc_private_key.pem -pubout -out ecc_public_key.pem

Encryption and Decryption using ECC:
$ openssl pkeyutl -encrypt -inkey publickey.pem -pubin -in message.txt -out message.ecc
$ openssl pkeyutl -decrypt -inkey privatekey.pem -in message.ecc -out message.txt