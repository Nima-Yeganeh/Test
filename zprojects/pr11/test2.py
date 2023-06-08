zfile1 = 'file1.htm'
zfile2 = 'file2.htm'
zfile3 = 'file3.htm'
zfile4 = 'file4.htm'


mp3 = "https://test2-dl.nimayeganeh.ir/mp3-play.php?filename=MajidRostami-HamoonHamishegi128.mp3"
img = "https://test2.nimayeganeh.ir/wp-content/uploads/2023/06/MiladBabaei-HeseKhastaneTo.jpg"

# Read contents of file1
with open(zfile1, 'r') as file1:
    content1 = file1.read()
with open(zfile4, 'a') as file4:
    file4.write(content1)

# Append contents of the variable to file4
with open(zfile4, 'a') as file4:
    file4.write(mp3)

# Read contents of file2
with open(zfile2, 'r') as file2:
    content2 = file2.read()
with open(zfile4, 'a') as file4:
    file4.write(content2)

# Append contents of the variable to file4
with open(zfile4, 'a') as file4:
    file4.write(img)

# Read contents of file3
with open(zfile3, 'r') as file3:
    content3 = file3.read()
with open(zfile4, 'a') as file4:
    file4.write(content3)


