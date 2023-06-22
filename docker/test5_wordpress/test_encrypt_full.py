# pip install cryptography
from cryptography.fernet import Fernet
import os

file_name = "secret.txt"

if os.path.exists(file_name):
    os.remove(file_name)
    print("File removed.")

open(file_name, "w").close()
print("File created.")

code = input("Enter a 40-character code: ")

# Check if the input code is exactly 40 characters long
if len(code) == 40:
    result = code
    # print("Result:", result)
else:
    print("Invalid code. Please enter a 40-character code.")

def encrypt_string(message, encryption_key):
    cipher_suite = Fernet(encryption_key)
    encrypted_message = cipher_suite.encrypt(message.encode())
    return encrypted_message.decode()

def decrypt_string(encrypted_message, encryption_key):
    cipher_suite = Fernet(encryption_key)
    decrypted_message = cipher_suite.decrypt(encrypted_message.encode())
    return decrypted_message.decode()

encryption_key = result+'ABC='
# print(encryption_key)

prompts = ["Tel Bot Token: ", "Tel Chat ID: ", "WP Domain: ", "WP User: ", "WP Pass: ", "Instagram ID: ", "Instagram Pass: "]
for prompt in prompts:
    input_string = input(prompt)
    # Encrypt the input string using the encryption key
    encrypted_string = encrypt_string(input_string, encryption_key)
    # print("Encrypted string:", encrypted_string)
    # Write the input to a file
    with open(file_name, "a") as file:
        file.write(encrypted_string + "\n")
    print("Input written to", file_name)

with open(file_name, "r") as file:
    for line in file:
        content = line.rstrip('\n')
        print(content)
        decrypted_string = decrypt_string(content, encryption_key)
        print("Decrypted string from file:", decrypted_string)
