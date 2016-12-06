from Crypto.Cipher import ARC4

def encrypt(key, message):
    obj = ARC4.new(key)
    return obj.encrypt(message).encode('hex')

def decrypt(key, cipherText):
    obj = ARC4.new(key)
    return obj.decrypt(cipherText.decode('hex'))
    
key = '12345678'
message = 'Hello World!'
cipherText = encrypt(key, message)

print 'Message: ' + message
print 'Key: ' + key
print 'Ciphertext: ' + cipherText
print 'Decrypted text: ' + decrypt(key, cipherText)

