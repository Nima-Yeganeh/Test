filename = 'zcontentfile.txt'

# Read the file content
with open(filename, 'r') as file:
    caption = file.read()

# Print the caption
print("Caption:", caption)
