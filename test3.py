import subprocess

# Run multiple bash commands
commands = [
    'git status',
    'git add *',
    'git commit -m "done"',
    'git push',
    'git pull'
]

for command in commands:
    process = subprocess.Popen(command.split(), stdout=subprocess.PIPE)
    output, error = process.communicate()

    # Print the output of each command
    print(output.decode('utf-8'))
