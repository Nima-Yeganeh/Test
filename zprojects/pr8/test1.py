from cryptography.fernet import Fernet

def encrypt_string(message, encryption_key):
    cipher_suite = Fernet(encryption_key)
    encrypted_message = cipher_suite.encrypt(message.encode())
    return encrypted_message.decode()

def decrypt_string(encrypted_message, encryption_key):
    cipher_suite = Fernet(encryption_key)
    decrypted_message = cipher_suite.decrypt(encrypted_message.encode())
    return decrypted_message.decode()

# Replace "string2" with your own encryption key
encryption_key = b'string2'

# Get the input string from the user
input_string = input("Enter the string to encrypt: ")

# Encrypt the input string using the encryption key
encrypted_string = encrypt_string(input_string, encryption_key)
print("Encrypted string:", encrypted_string)

# Decrypt the encrypted string using the encryption key
decrypted_string = decrypt_string(encrypted_string, encryption_key)
print("Decrypted string:", decrypted_string)
