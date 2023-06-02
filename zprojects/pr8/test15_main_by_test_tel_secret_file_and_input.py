import test10_my_encrypt_decrypt_module

# Call the function from my_module
code = input("Enter a 4-character code: ")

# bot_token = 'YOUR_TOKEN'
bot_token = test10_my_encrypt_decrypt_module.my_function(code, "tel_bot_token.txt")
print(bot_token)

# chat_id = 'CHANNEL_OR_CHAT_ID'
chat_id = test10_my_encrypt_decrypt_module.my_function(code, "tel_chat_id.txt")
print(chat_id)
