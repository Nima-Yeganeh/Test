filename = 'zjpgfile.txt'

# Read the file content
with open(filename, 'r') as file:
    content = file.readlines()

# Check if the file has any content
if content:
    # Get the first line
    first_line = content[0].strip()

    # Print the first line
    print("First line:", first_line)
else:
    print("File is empty.")

