from PIL import Image
from PIL import ImageOps

image = Image.open('image.jpg')
im = image.convert('RGB')
imgWidth, imgHeight = im.size
output = ''

for x in range (0, imgHeight):
   for y in range(0, imgWidth):
       r, g, b = im.getpixel((y,x))
       output += chr(r) + chr(g) + chr(b)

print output

im.save('greyscale.png', 'PNG')