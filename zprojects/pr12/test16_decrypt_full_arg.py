# pip install cryptography
from cryptography.fernet import Fernet
import sys

# code = input("Enter a 40-character code: ")

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
            # print("Line 1:", line1)
            # print("Line 2:", line2)
            # print("Line 3:", line3)
            # print("Line 4:", line4)
            # print("Line 5:", line5)
            content = line1
            try:
                decrypted_string = decrypt_string(content, encryption_key)
                print("Decrypted string from file:", decrypted_string)
            except Exception as e:
                print("Error decrypting:", str(e))
            content = line2
            try:
                decrypted_string = decrypt_string(content, encryption_key)
                print("Decrypted string from file:", decrypted_string)
            except Exception as e:
                print("Error decrypting:", str(e))
            content = line3
            try:
                decrypted_string = decrypt_string(content, encryption_key)
                print("Decrypted string from file:", decrypted_string)
            except Exception as e:
                print("Error decrypting:", str(e))
            content = line4
            try:
                decrypted_string = decrypt_string(content, encryption_key)
                print("Decrypted string from file:", decrypted_string)
            except Exception as e:
                print("Error decrypting:", str(e))
            content = line5
            try:
                decrypted_string = decrypt_string(content, encryption_key)
                print("Decrypted string from file:", decrypted_string)
            except Exception as e:
                print("Error decrypting:", str(e))
        except FileNotFoundError:
            print("File not found.")
    else:
        print("Invalid code. Please enter a 4-character code.")

    # if arg1 == 1:
    #     variable1 = "Value for variable 1"
    #     print(variable1)
    # elif arg1 == 2:
    #     variable2 = "Value for variable 2"
    #     print(variable2)

else:
    print("Please provide two arguments.")
