string = 'دانلود آهنگ جدید Emo Band با نام شک'

# Split the string into words
words = string.split()

# Create a new formatted string with single quotes and commas
formatted_string = ', '.join(f"'{word}'" for word in words)

# Print the formatted string
print(formatted_string)
