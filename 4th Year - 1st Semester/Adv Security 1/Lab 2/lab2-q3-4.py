LETTERS = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
def translate(message, key, mode):
    translated = [] # store message string
    index = 0
    key = key.upper()

    for char in message: # loop through chars in message
        position = LETTERS.find(char.upper())
        if position != -1:
            if mode == 'encrypt':
                position += LETTERS.find(key[index]) # add if encrypting
            elif mode == 'decrypt':
                position -= LETTERS.find(key[index]) # subtract if decrypting
            # handle potential wrap-around
            position %= len(LETTERS)
            # add the encrypted/decrypted symbol to the end of translated.
            if char.isupper():
                translated.append(LETTERS[position])
            elif char.islower():
                translated.append(LETTERS[position].lower())
            
            index += 1 # move to next letter in key
            if index == len(key):
                index = 0

        else:
            translated.append(char)
    
    return ''.join(translated)
 
def encrypt(message, key):
    return translate(message, key, 'encrypt')
 
def decrypt(message, key):
    return translate(message, key, 'decrypt')

print "--------------------------Q3----------------------------------" 

key = "PASSWORD"
message = "I shall (from now on) select and take the ingots individually in my own yard, and I shall exercise against you my right of rejection because you have treated me with contempt."
encryptedText = encrypt(message, key)
print "Encrypted text: " + encryptedText

print "--------------------------Q4----------------------------------" 

message = "Yhwvtroi, 28 Yudq 2016 - Pse bjatw pt foxgf zwjzql bgio qcwelwlar, blsg rmprochek ewrv nsoyr uvs ndcljebv rk pkium hy bef; sjr wutm vljg aybefl ds ydx mchf asx bojw lwfxx, aph fjsbntzaju kkwixit hvbduyzkik wme ylpzs gdrdv. wbu wme mmou olhtsajg wutm mmmzwxv lanebx ejipkt, obn dtzwn avq fnf xicgo lhg sns yxstuqfb oxs fakdsipjn qj uvs uxny zwjv gjskwusr pgoe zqbklsg, cre wt cdmw oafv lstgqqsfkie, lzam ydae eibgsn urge pvvlw ipxfadogafua oj zfs kr uvssg pgoaf; rqi odiewsxi tg ldszu kavlff oxs mgldsi dsd vs uvs oadwjo, we rupqwjhwyc tg lds gdxt cptc wx ihw xqhluj, ba wp oqdxny gj smhwy qgdogsdn, lzam nlql nmws poitwj wbu ptrg lbddsay"
key = "FACEBOOKPASSWORD"
print "Decrypted text: " + decrypt(message, key)
