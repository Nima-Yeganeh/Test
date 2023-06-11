zjpgfilename = "zjpgfilename.txt"

# Read the first line of the file into a variable
with open(zjpgfilename, 'r') as file:
    first_line = file.readline().strip()

# Print the variable
print(first_line)
