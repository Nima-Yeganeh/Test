const { exec } = require('child_process');

// Run a shell command
const command = 'uptime';
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

