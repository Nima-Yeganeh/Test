file1_path = 'file1.htm'
file2_path = 'file2.htm'
file3_path = 'file3.htm'
file4_path = 'file4.htm'

# Read contents of file1
with open(file1_path, 'r') as file1:
    content1 = file1.read()
with open(file4_path, 'a') as file2:
    file4.write(content1)

# Read contents of file2
with open(file2_path, 'r') as file1:
    content2 = file2.read()
with open(file4_path, 'a') as file2:
    file4.write(content2)

# Read contents of file3
with open(file3_path, 'r') as file1:
    content3 = file3.read()
with open(file4_path, 'a') as file2:
    file4.write(content3)
