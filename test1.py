import subprocess

# Run a bash command
command = 'ls -al'
process = subprocess.Popen(command.split(), stdout=subprocess.PIPE)
output, error = process.communicate()

# Print the output of the command
print(output.decode('utf-8'))
