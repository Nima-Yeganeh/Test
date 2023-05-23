To get information on a virtual machine in Linux, you can use the "virsh" command-line tool. Specifically, you would need to use the "virsh dominfo" subcommand, followed by the name or ID of the virtual machine you want information about. 

For example, if you wanted information about a virtual machine called "myvm", you would enter the following command: 

```
virsh dominfo myvm
```

This would display information such as the domain ID, name, UUID, memory usage, CPU usage, and more.
