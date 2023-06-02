# pip install cryptography
from cryptography.fernet import Fernet
code = input("Enter a 4-character code: ")
# Check if the input code is exactly 4 characters long
if len(code) == 4:
    result = code
    for _ in range(9):
        result += code
else:
    print("Invalid code. Please enter a 4-character code.")
def decrypt_string(encrypted_message, encryption_key):
    cipher_suite = Fernet(encryption_key)
    decrypted_message = cipher_suite.decrypt(encrypted_message.encode())
    return decrypted_message.decode()
encryption_key = result+'ABC='
file_name = "secret.txt"
try:
    with open(file_name, "r") as file:
        content = file.read()
        print(content)
        decrypted_string = decrypt_string(content, encryption_key)
        print("Decrypted string from file:", decrypted_string)
except FileNotFoundError:
    print("File not found.")
