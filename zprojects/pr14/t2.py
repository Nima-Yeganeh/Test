import os

def extract_file_extension(file_path):
    _, extension = os.path.splitext(file_path)
    return extension

file_path = "file.mp4"

extension = extract_file_extension(file_path)
extension = extension.lstrip(".")

if extension:
    print(extension)
else:
    print("Unable to determine file extension.")
