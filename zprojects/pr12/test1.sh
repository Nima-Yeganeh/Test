echo "Enter a 40-character code: "
read code
Tel_Bot_Token=$(python3 test16_decrypt_full_arg.py 1 $code)
Tel_Chat_ID=""
WP_Domain=""
WP_User=""
WP_Pass=""
echo $Tel_Bot_Token
