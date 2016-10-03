print "--------------------------Q1----------------------------------" 
def caesar(s, k, decrypt=False):
    if decrypt: k = 26 - k
    r = ""
    for i in s:
        if (ord(i) >= 65 and ord(i) <= 90):
            r += chr((ord(i) - 65 + k) % 26 + 65)
        elif (ord(i) >= 97 and ord(i) <= 122):
            r += chr((ord(i) - 97 + k) % 26 + 97)
        else:
            r += i
    return r

def encrypt(p, k):
    return caesar(p, k)

def decrypt(c, k):
    return caesar(c, k, True)
    
message = "And I shall remain satisfied, and proud to have been the first who has ever enjoyed the fruit of his writings as fully as he could desire; for my desire has been no other than to deliver over to the detestation of mankind the false and foolish tales of the books of chivalry, which, thanks to that of my true Don Quixote, are even now tottering, and doubtless doomed to fall for ever. Farewell."
key = -3
print "Key: " + str(key)
encryptedText =  encrypt(message, key)
print "Encrypted text: " + encryptedText
print "Decrypted text: " + decrypt(encryptedText, key)

print "--------------------------Q2----------------------------------" 

encryptedText = "Vg jbhyq frrz gung, nf ur rknzvarq gur frireny cbffvovyvgvrf, n fhfcvpvba pebffrq uvf zvaq: gur zrzbel bs ubj ur uvzfrys unq orunirq va rneyvre qnlf znqr uvz nfx jurgure fbzrbar zvtug or uvqvat ure sebz gur jbeyq"
key = 13
print "Key: " + str(key)
print "Decrypted text: " + decrypt(encryptedText, key)

print "--------------------------Q3----------------------------------" 
from itertools import starmap, cycle
 
def Vencrypt(message, key):
 
    # convert to uppercase.
    # strip out non-alpha characters.
    message = filter(str.isalpha, message.upper())
 
    # single letter encrpytion.
    def enc(c,k): return chr(((ord(k) + ord(c) - 2*ord('A')) % 26) + ord('A'))
 
    return "".join(starmap(enc, zip(message, cycle(key))))
 
def Vdecrypt(message, key):
 
    # single letter decryption.
    def dec(c,k): return chr(((ord(c) - ord(k) - 2*ord('A')) % 26) + ord('A'))
 
    return "".join(starmap(dec, zip(message, cycle(key))))

key = "PASSWORD"
text = "I shall (from now on) select and take the ingots individually in my own yard, and I shall exercise against you my right of rejection because you have treated me with contempt."
encryptedText = Vencrypt(text, key)
print "Encrypted text: " + encryptedText
print "Decrypted text: " + Vdecrypt(encryptedText, key)

print "--------------------------Q4----------------------------------" 