import sys

# Check if the script was called with an argument
if len(sys.argv) > 1:
    # Get the input from the command-line argument
    user_input = sys.argv[1]

    # Print the input
    print("Input:", user_input)
else:
    print("No input provided.")
