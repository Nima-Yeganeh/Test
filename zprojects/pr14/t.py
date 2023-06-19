import filetype
import os
video = 'photo1.jpg'
fext = filetype.guess(video)
print(fext)
fext = os.path.splitext(video)
print(fext)

