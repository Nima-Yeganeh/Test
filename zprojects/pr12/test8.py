import time

start_num = 1000000000
end_num = 9999999999

start_time = time.time()

for current_num in range(start_num, end_num + 1):
    pass

end_time = time.time()

execution_time = end_time - start_time
print("Execution time: {:.2f} seconds".format(execution_time))
