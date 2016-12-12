from PIL import Image


message = 'Hello!'
image = Image.open('image.jpg')
im = image.convert('L')
imgWidth, imgHeight = im.size

# pad missing bits
def padding(val):
    remainder = len(val) % 8
    if remainder != 0:
        for pad in range(0, 8 - remainder):
            val = '0' + val
        return val

# convert to binary
def toBinary(val, pad):
    bin = '{0:b}'.format(val)
    if pad == True:
        padding(bin)
    return bin

# convert message to binary
def messageToBinary(message):
    val = ''
    for letter in message:
        bin = toBinary(ord(letter), False)
        val = val + bin
    return val

messageInBinary = messageToBinary(message)

# loop through each pixel and add message bit on LSB of each.
messageIndex = 0
for x in range (0, imgHeight):
   for y in range(0, imgWidth):
        pixelBinary = toBinary(im.getpixel((y,x)), False)
        pixelBinary = list(pixelBinary)
        messageInBinary = list(messageInBinary)
        pixelBinary[len(pixelBinary) - 1] = messageInBinary[messageIndex]
        pixelBinary = ''.join(pixelBinary)
        print im.getpixel((y,x))
        im.putpixel((y,x), int(pixelBinary, 2))
        print im.getpixel((y,x))



# save greyscale picture
im.save('greyscale.png', 'PNG')




# '{0:b}'.format(10)