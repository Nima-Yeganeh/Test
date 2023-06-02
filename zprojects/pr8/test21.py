import os

filename = 'zmp3file.txt'

# Read the file content
with open(filename, 'r') as file:
    lines = file.readlines()

# Check if each file exists and has size greater than zero
for line in lines:
    filepath = line.strip()
    if os.path.isfile(filepath) and os.path.getsize(filepath) > 0:
        print("File exists and has size greater than zero:", filepath)
