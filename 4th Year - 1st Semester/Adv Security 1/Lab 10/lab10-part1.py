from PIL import Image

image = Image.open('image.jpg')
im = image.convert('L')
imgWidth, imgHeight = im.size

# loop and print through each pixel
for x in range (0, imgHeight):
   for y in range(0, imgWidth):
       print 'x:' +  str(x) + ' y:' + str(y) + ' value:' + str(im.getpixel((y,x)))

# save greyscale picture
im.save('greyscale.png', 'PNG')


