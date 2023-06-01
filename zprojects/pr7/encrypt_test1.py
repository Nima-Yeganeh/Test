import string

string_to_encrypt = input("Enter a string (string_to_encrypt): ")
code = input("Enter a string(code): ")

def encrypt_string(string, code):
    # Create a translation table from the original alphabet to the code alphabet
    table = str.maketrans(string.ascii_lowercase, code)
    table_upper = str.maketrans(string.ascii_uppercase, code.upper())
    
    # Encrypt the string using the translation table
    encrypted_string = string.translate(table).translate(table_upper)
    
    return encrypted_string

# Example usage
string_to_encrypt = "This is a secret message."
code = "qwertyuiopasdfghjklzxcvbnm"
encrypted_string = encrypt_string(string_to_encrypt, code)
print("Original string:", string_to_encrypt)
print("Encrypted string:", encrypted_string)
