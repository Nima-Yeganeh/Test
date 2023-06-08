file1_path = 'file1.htm'
file2_path = 'file2.htm'
file3_path = 'file3.htm'
file4_path = 'file4.htm'

mp3 = "https://test2-dl.nimayeganeh.ir/mp3-play.php?filename=MajidRostami-HamoonHamishegi128.mp3"
img = "https://test2.nimayeganeh.ir/wp-content/uploads/2023/06/MiladBabaei-HeseKhastaneTo.jpg"

# Read contents of file1
with open(file1_path, 'r') as file1:
    content1 = file1.read()
with open(file4_path, 'a') as file4:
    file4.write(content1)

# Append contents of the variable to file4
with open(file4_path, 'a') as file4:
    file4.write(mp3)

# Read contents of file2
with open(file2_path, 'r') as file2:
    content2 = file2.read()
with open(file4_path, 'a') as file4:
    file4.write(content2)

# Append contents of the variable to file4
with open(file4_path, 'a') as file4:
    file4.write(img)

# Read contents of file3
with open(file3_path, 'r') as file3:
    content3 = file3.read()
with open(file4_path, 'a') as file4:
    file4.write(content3)

