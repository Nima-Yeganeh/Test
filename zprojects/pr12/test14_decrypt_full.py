file_name = "secret.txt"

with open(file_name, "r") as file:
    line1 = file.readline().rstrip('\n')
    line2 = file.readline().rstrip('\n')
    line3 = file.readline().rstrip('\n')
    line4 = file.readline().rstrip('\n')
    line5 = file.readline().rstrip('\n')
    
print("Line 1:", line1)
print("Line 2:", line2)
print("Line 3:", line3)
print("Line 4:", line4)
print("Line 5:", line5)

