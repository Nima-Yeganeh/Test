# pip install cryptography
from cryptography.fernet import Fernet

def decrypt_string(encrypted_message, encryption_key):
    cipher_suite = Fernet(encryption_key)
    decrypted_message = cipher_suite.decrypt(encrypted_message.encode())
    return decrypted_message.decode()

def my_function(xcode, secret_file):
    code = xcode
    # Check if the input code is exactly 4 characters long
    if len(code) == 4:
        result = code
        for _ in range(9):
            result += code
        encryption_key = result+'ABC='
        file_name = secret_file
        try:
            with open(file_name, "r") as file:
                content = file.read()
                print(content)
                try:
                    decrypted_string = decrypt_string(content, encryption_key)
                    print("Decrypted string from file:", decrypted_string)
                except Exception as e:
                    print("Error decrypting:", str(e))
        except FileNotFoundError:
            print("File not found.")
    else:
        print("Invalid code. Please enter a 4-character code.")

if __name__ == "__main__":
    my_function("", "")
