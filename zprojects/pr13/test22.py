import sys

if len(sys.argv) == 4:
    arg1 = sys.argv[1]
    arg2 = sys.argv[2]
    arg3 = sys.argv[3]
    
    # url = 'http://test2.nimayeganeh.ir/xmlrpc.php'
    url = 'http://'+arg1+'/xmlrpc.php'
    # username = 'admin'
    username = arg2
    # password = 'P@ssw0rd'
    password = arg3

    print(url)
    print(username)
    print(password)
    
else:
    print("Please provide 3 arguments.")
