# pip install cryptography
from cryptography.fernet import Fernet
import sys

def decrypt_string(encrypted_message, encryption_key):
    cipher_suite = Fernet(encryption_key)
    decrypted_message = cipher_suite.decrypt(encrypted_message.encode())
    return decrypted_message.decode()

file_name = "secret.txt"

if len(sys.argv) == 3:
    arg1 = sys.argv[1]
    arg2 = sys.argv[2]
    arg1 = int(sys.argv[1])
    code = arg2

    if len(code) == 40:
        result = code
        encryption_key = result+'ABC='
        try:
            with open(file_name, "r") as file:
                line1 = file.readline().rstrip('\n')
                line2 = file.readline().rstrip('\n')
                line3 = file.readline().rstrip('\n')
                line4 = file.readline().rstrip('\n')
                line5 = file.readline().rstrip('\n')           

            if arg1 == 1:
                content = line1
                try:
                    decrypted_string = decrypt_string(content, encryption_key)
                    print(decrypted_string)
                except Exception as e:
                    print("Error decrypting:", str(e))
            elif arg1 == 2:
                content = line2
                try:
                    decrypted_string = decrypt_string(content, encryption_key)
                    print(decrypted_string)
                except Exception as e:
                    print("Error decrypting:", str(e))
            elif arg1 == 3:
                content = line3
                try:
                    decrypted_string = decrypt_string(content, encryption_key)
                    print(decrypted_string)
                except Exception as e:
                    print("Error decrypting:", str(e))
            elif arg1 == 4:
                content = line4
                try:
                    decrypted_string = decrypt_string(content, encryption_key)
                    print(decrypted_string)
                except Exception as e:
                    print("Error decrypting:", str(e))
            elif arg1 == 5:
                content = line5
                try:
                    decrypted_string = decrypt_string(content, encryption_key)
                    print(decrypted_string)
                except Exception as e:
                    print("Error decrypting:", str(e))

        except FileNotFoundError:
            print("File not found.")
    else:
        print("Invalid code. Please enter a 4-character code.")

else:
    print("Please provide two arguments.")
