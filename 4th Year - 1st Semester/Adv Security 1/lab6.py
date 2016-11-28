from Crypto.Cipher import ARC4

key= '12345678'

def encrypt(key, text):
    obj = ARC4.new(key)
    return obj.encrypt(text)

def decrypt(key, encryptedText):
    obj = ARC4.new(key)
    return obj.decrypt(encryptedText)

text = 'Hello World!'

encryptedText = encrypt(key, text)

print('Encrypted Text:', encryptedText)
print('Decrypted Text:', decrypt(key, encryptedText))

