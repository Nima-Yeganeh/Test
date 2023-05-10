const { exec } = require('child_process');

// Run multiple shell commands
const commands = [
  'git status',
  'git add *',
  'git commit -m "done"',
  'git push',
  'git pull'
];

for (const command of commands) {
  exec(command, (error, stdout, stderr) => {
    if (error) {
      console.error(`Error: ${error.message}`);
      return;
    }
    if (stderr) {
      console.error(`Error: ${stderr}`);
      return;
    }
    console.log(`Output:\n${stdout}`);
  });
}

