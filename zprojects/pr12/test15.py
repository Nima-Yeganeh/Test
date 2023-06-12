import sys

# Check if two arguments are provided
if len(sys.argv) == 3:
    # Get the arguments from command input
    arg1 = sys.argv[1]
    arg2 = sys.argv[2]

    # Print the arguments
    print("Argument 1:", arg1)
    print("Argument 2:", arg2)
else:
    # Print an error message if arguments are not provided
    print("Please provide two arguments.")
