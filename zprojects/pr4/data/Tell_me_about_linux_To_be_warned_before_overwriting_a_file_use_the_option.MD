In Linux, to be warned before overwriting a file, you can use the `-i` option. This option will prompt you before overwriting an existing file, giving you the option to proceed with the overwrite or to cancel the operation. For example, if you're using the `cp` (copy) command, you can use the `-i` option to be warned before overwriting an existing file:

```
cp -i file1.txt file2.txt
```

This command will copy `file1.txt` to `file2.txt`, but if `file2.txt` already exists, you will be prompted to confirm whether you want to overwrite it or not.
