import sys

if len(sys.argv) == 3:
    arg1 = sys.argv[1]
    arg2 = sys.argv[2]

    arg1 = int(sys.argv[1])
    if arg1 == 1:
        variable1 = "Value for variable 1"
        print(variable1)
    elif arg1 == 2:
        variable2 = "Value for variable 2"
        print(variable2)

else:
    print("Please provide two arguments.")
