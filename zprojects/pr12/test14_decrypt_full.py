file_name = "secret.txt"

with open(file_name, "r") as file:
    line1 = file.readline().rstrip('\n')
    line2 = file.readline().rstrip('\n')

print("Line 1:", line1)
print("Line 2:", line2)

