import os

# Function to extract the file extension
def extract_file_extension(file_path):
    _, extension = os.path.splitext(file_path)
    return extension

# Path to the file
file_path = "file.mp4"

# Extract the file extension
extension = extract_file_extension(file_path)

# Print the file extension
if extension:
    print("File extension:", extension)
else:
    print("Unable to determine file extension.")
