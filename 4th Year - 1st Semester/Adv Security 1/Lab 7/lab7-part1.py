import base64
from Crypto.Cipher import DES

#Add padding if not divisible by 8
def addPadding(data):
    paddingLength = 8 - (len(data) % 8)
    data = data + ' ' * paddingLength
    return data

def chunks(longdata, x):
    for i in range(0, len(longdata), x):
        yield longdata[i:i + x]

iv = '00000000'
text = 'AAAABBBBCCCCD'
text = addPadding(text)
source = dict(enumerate(list(chunks(text, 8)), start = 0))

hash = iv #set initial hash
for data in source:
    des = DES.new(source[data], DES.MODE_ECB)
    cipherText = des.encrypt(hash)
    #create new hash from encrypted text
    hash = ''.join(chr(ord(x) ^ ord(y)) for x ,y in zip(hash, cipherText))


print 'Plaintext: ' + text
print 'Hash base16 encoded: ' + str(map(''.join, zip(*[iter(base64.b16encode(hash))]*16)))
