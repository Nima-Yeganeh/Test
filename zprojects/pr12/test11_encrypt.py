# pip install cryptography
from cryptography.fernet import Fernet
code = input("Enter a 4-character code: ")
# Check if the input code is exactly 4 characters long
if len(code) == 40:
    result = code
    # print("Result:", result)
else:
    print("Invalid code. Please enter a 4-character code.")
def encrypt_string(message, encryption_key):
    cipher_suite = Fernet(encryption_key)
    encrypted_message = cipher_suite.encrypt(message.encode())
    return encrypted_message.decode()
def decrypt_string(encrypted_message, encryption_key):
    cipher_suite = Fernet(encryption_key)
    decrypted_message = cipher_suite.decrypt(encrypted_message.encode())
    return decrypted_message.decode()
encryption_key = result+'ABC='
print(encryption_key)
input_string = input("Enter the string to encrypt: ")
# Encrypt the input string using the encryption key
encrypted_string = encrypt_string(input_string, encryption_key)
print("Encrypted string:", encrypted_string)
# Write the input to a file
file_name = "secret.txt"
with open(file_name, "w") as file:
    file.write(encrypted_string)
print("Input written to", file_name)
# Decrypt the encrypted string using the encryption key
decrypted_string = decrypt_string(encrypted_string, encryption_key)
print("Decrypted string:", decrypted_string)
try:
    with open(file_name, "r") as file:
        content = file.read()
        print(content)
        decrypted_string = decrypt_string(content, encryption_key)
        print("Decrypted string from file:", decrypted_string)
except FileNotFoundError:
    print("File not found.")
