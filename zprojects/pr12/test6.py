from cryptography.fernet import Fernet
valid = False
code = 0
def decrypt_string(encrypted_message, encryption_key):
    cipher_suite = Fernet(encryption_key)
    decrypted_message = cipher_suite.decrypt(encrypted_message.encode())
    return decrypted_message.decode()
for number in range(1000, 10000):
    code = number
    print(code)
    if len(code) == 4:
        result = code
        for _ in range(9):
            result += code
        encryption_key = result+'ABC='
        file_name = "secret.txt"
        try:
            with open(file_name, "r") as file:
                content = file.read()
                print(content)
                try:
                    decrypted_string = decrypt_string(content, encryption_key)
                    print("Decrypted string from file:", decrypted_string)
                    break
                except Exception as e:
                    print("Error decrypting:", str(e))
        except FileNotFoundError:
            print("File not found.")
    else:
        print("Invalid code. Please enter a 4-character code.")
