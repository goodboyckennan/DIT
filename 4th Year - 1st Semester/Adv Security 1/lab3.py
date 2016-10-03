from Crypto.Cipher import DES
key = '12345678'

def encrypt(key, plainText, mode, iv):
    if (mode == DES.MODE_ECB):
        des = DES.new(key, mode)
    elif (mode == DES.MODE_CBC):
        des = DES.new(key, mode, iv)

    return des.encrypt(plainText).encode('hex')

def decrypt(key, cipherText, mode, iv):
    if (mode == DES.MODE_ECB):
        des = DES.new(key, mode)
    elif (mode == DES.MODE_CBC):
        des = DES.new(key, mode, iv)

    return des.decrypt(cipherText.decode('hex'))

print "--------------------------Q1----------------------------------" 
text = 'AAAABBBBAAAABBBB'
cipherText = encrypt(key, text, DES.MODE_ECB, '')
print "Encrypted text: " + cipherText
print "Decrypted text: " + decrypt(key, cipherText, DES.MODE_ECB, '')

print "--------------------------Q2----------------------------------" 
text = 'AAAABBBBAAAABBBB'
iv = '00000000'
cipherText = encrypt(key, text, DES.MODE_CBC, iv)
print "Encrypted text: " + cipherText
print "Decrypted text: " + decrypt(key, cipherText, DES.MODE_CBC, iv)

print "--------------------------Q3----------------------------------"
text = 'AAAABBBBCCCC' 


