To be warned before overwriting a file in Linux, you can use the "-i" option, which stands for "interactive". This option will prompt you before overwriting any file, allowing you to decide whether to proceed or not. 

For example, if you want to copy a file named "example.txt" to a new directory, but you want to be warned before overwriting any existing file with the same name, you would use the following command:

```
cp -i example.txt /path/to/new/directory/
```

If a file with the same name already exists in the destination directory, the system will prompt you to confirm whether or not to overwrite the file.
