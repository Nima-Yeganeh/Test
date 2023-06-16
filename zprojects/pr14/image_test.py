import PIL
from PIL import Image

if not hasattr(PIL, 'PILLOW_VERSION'):
    print('Imageio Pillow requires Pillow, not PIL!')
