echo "Enter a 40-character code: "
read code
Tel_Bot_Token=$(python3 test16_decrypt_full_arg.py 1 $code)
Tel_Chat_ID=$(python3 test16_decrypt_full_arg.py 2 $code)
WP_Domain=$(python3 test16_decrypt_full_arg.py 3 $code)
WP_User=$(python3 test16_decrypt_full_arg.py 4 $code)
WP_Pass=$(python3 test16_decrypt_full_arg.py 5 $code)
echo $Tel_Bot_Token
echo $Tel_Chat_ID
echo $WP_Domain
echo $WP_User
echo $WP_Pass
