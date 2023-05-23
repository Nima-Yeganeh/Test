To find which package provides the vim command in Linux, you can use the following command:

```
sudo yum provides vim
```

or

```
sudo apt-get install apt-file
sudo apt-file update
apt-file search bin/vim
```

Both commands will search the package manager for the vim command and output the package that provides it. This can be helpful if you are missing a command or utility and need to know which package to install to get it.
