code = input("Enter a 4-character code: ")
# Check if the input code is exactly 4 characters long
if len(code) == 4:
    result = code
    for _ in range(11):
        result += code
    print("Result:", result)
else:
    print("Invalid code. Please enter a 4-character code.")
