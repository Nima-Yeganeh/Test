Here are some common TCP/IP commands for Linux:

1. ifconfig:
The ifconfig command is used to configure network interfaces, as well as to display information about currently active interfaces. To display information about all active interfaces, run the following command:

```
ifconfig
```

This will display information about each active interface, including its IP address, netmask, and other network configuration details.

2. ip:
The ip command is a more modern and comprehensive replacement for ifconfig. It can be used to manage network interfaces, addresses, routes, and more. To display information about all active interfaces, run the following command:

```
ip addr show
```

This will display information about each active interface, including its IP address, netmask, and other network configuration details.

3. ping:
The ping command is used to test connectivity to a remote host. To ping a remote host, run the following command:

```
ping hostname
```

Replace "hostname" with the hostname or IP address of the remote host. This will send ICMP packets to the remote host and display the results.

4. netstat:
The netstat command is used to display information about active network connections and listening ports. To display a list of active connections, run the following command:

```
netstat -a
```

This will display a list of all active connections, including the local and remote addresses and the protocol used.

5. traceroute:
The traceroute command is used to trace the path of packets from the local host to a remote host. To trace the path to a remote host, run the following command:

```
traceroute hostname
```

Replace "hostname" with the hostname or IP address of the remote host. This will display the path taken by packets to reach the remote host, including the IP addresses and response times of intermediate hops.

Overall, these TCP/IP commands provide a way to manage and troubleshoot network connectivity on Linux systems. By using these commands, you can diagnose and resolve network issues to keep your systems running smoothly.

Sure, here are some examples of how these TCP/IP commands can be used in troubleshooting network issues:

1. ifconfig / ip:
Use the ifconfig or ip command to check if a network interface is up and has been assigned an IP address. If the interface is down or doesn't have an IP address assigned, you can use these commands to bring it up or assign an IP address. For example:

```
sudo ifconfig eth0 up
sudo ip addr add 192.168.1.100/24 dev eth0
```

2. ping:
Use the ping command to check if a remote host is reachable and responsive. If the remote host is not responding, ping can help determine if the issue is with the network connectivity or the remote host. For example:

```
ping google.com
```

3. netstat:
Use the netstat command to check if a service is listening on a specific port. If the service is not running or listening on the expected port, netstat can help identify the issue. For example:

```
netstat -tulpn | grep 80
```

This command will display all processes listening on port 80.

4. traceroute:
Use the traceroute command to identify network connectivity issues between the local host and a remote host. If the traceroute shows that packets are being dropped or taking a non-optimal path, it can help identify network issues. For example:

```
traceroute google.com
```

This command will show the path taken by packets to reach google.com and can help identify network issues.

Overall, by using these TCP/IP commands in troubleshooting network issues, you can diagnose and resolve common issues that can impact network connectivity and performance.

