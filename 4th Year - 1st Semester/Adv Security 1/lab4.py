from Crypto.Cipher import AES
key = '1234567812345678'

def encrypt(key, plainText, mode):
    aes = AES.new(key, mode)
    #add padding if text length not divisible by 16
    if (len(plainText) % 16 != 0):
        paddingLength = 16 - (len(plainText) % 16)
        plainText += ' '  * paddingLength

    return aes.encrypt(plainText).encode('hex')

def decrypt(key, cipherText, mode):
    aes = AES.new(key, mode)

    return aes.decrypt(cipherText.decode('hex'))

print "--------------------------Q1----------------------------------" 
text = 'AAAABBBBCCCCDDDDAA'
cipherText = encrypt(key, text, AES.MODE_ECB)
print "Encrypted text: " + cipherText
print "Decrypted text: " + decrypt(key, cipherText, AES.MODE_ECB)

print "--------------------------Q2----------------------------------"
myFile = open('dictionary.txt', 'rw')
cipherText = "43d3215c92a75a1478fcf9cb950d20dba628062fe8b278c4c21d0ea8f7179f16"
lines = myFile.readlines()
for line in lines:
    key = line.strip()
    print "Key: " + key
    print "Encrypted text: " + cipherText
    print"Decrypted text: " + decrypt(key, cipherText, AES.MODE_ECB)