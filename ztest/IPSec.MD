To configure IPsec on Ubuntu, you can use the `strongswan` package. Here are the steps to configure IPsec on Ubuntu using `strongswan`:

1. Install the `strongswan` package using the following command:

```
sudo apt-get install strongswan
```

2. Configure the IPsec connection by creating a configuration file in the `/etc/ipsec.d/` directory. Here is an example configuration file:

```
conn myvpn
    type=tunnel
    left=192.0.2.1 # local IP address
    leftsubnet=10.0.0.0/24 # local subnet
    right=203.0.113.1 # remote IP address
    rightsubnet=192.168.0.0/24 # remote subnet
    authby=secret
    auto=start
```

In this example, the `conn` section defines the connection parameters, including the local and remote IP addresses and subnets. The `authby` parameter specifies the authentication method to use, and `auto=start` starts the connection automatically when IPsec starts.

3. Create a secrets file in the `/etc/ipsec.d/` directory to store the pre-shared key for the connection. Here is an example secrets file:

```
192.0.2.1 203.0.113.1 : PSK "my-secret-key"
```

In this example, the first two IP addresses are the local and remote IP addresses, and `my-secret-key` is the pre-shared key.

4. Start the IPsec service using the following command:

```
sudo systemctl start strongswan
```

5. Verify that the IPsec connection is established using the following command:

```
sudo ipsec status
```

This command displays the status of the IPsec connections.

That's it! You have now configured IPsec on Ubuntu using `strongswan`. You can use this configuration to establish secure VPN connections between two networks.



Yes, you can configure IPsec to use digital certificates for authentication instead of pre-shared keys. This is often referred to as "certificate-based authentication". Here are the steps to configure IPsec to use certificates on Ubuntu:

1. Install the `strongswan` package using the following command:

```
sudo apt-get install strongswan
```

2. Generate a private key and a self-signed certificate for the IPsec server using the following commands:

```
sudo ipsec pki --gen --type rsa --size 4096 --outform pem > server-key.pem
sudo ipsec pki --self --ca --lifetime 3650 --in server-key.pem --type rsa --dn "CN=IPsec Server" --outform pem > server-cert.pem
```

This generates a 4096-bit RSA private key and a self-signed certificate valid for 10 years for the IPsec server.

3. Generate a private key and a certificate signing request (CSR) for the IPsec client using the following commands:

```
sudo ipsec pki --gen --type rsa --size 4096 --outform pem > client-key.pem
sudo ipsec pki --req --in client-key.pem --type rsa --dn "CN=IPsec Client" --outform pem > client-req.pem
```

This generates a 4096-bit RSA private key and a CSR for the IPsec client.

4. Sign the client CSR with the IPsec server's certificate authority (CA) using the following commands:

```
sudo ipsec pki --issue --lifetime 730 --cacert server-cert.pem --cakey server-key.pem --in client-req.pem --type rsa --dn "CN=IPsec Client" --outform pem > client-cert.pem
```

This signs the client CSR with the IPsec server's CA, generating a client certificate valid for 2 years.

5. Configure the IPsec connection by creating a configuration file in the `/etc/ipsec.d/` directory. Here is an example configuration file:

```
conn myvpn
    type=tunnel
    left=192.0.2.1 # local IP address
    leftsubnet=10.0.0.0/24 # local subnet
    right=203.0.113.1 # remote IP address
    rightsubnet=192.168.0.0/24 # remote subnet
    authby=pubkey
    leftcert=server-cert.pem
    rightid="IPsec Client"
    rightcert=client-cert.pem
    auto=start
```

In this example, the `conn` section defines the connection parameters, including the local and remote IP addresses and subnets. The `authby` parameter specifies to use certificate-based authentication, and `leftcert` and `rightcert` specify the server and client certificates, respectively.

6. Start the IPsec service using the following command:

```
sudo systemctl start strongswan
```

7. Verify that the IPsec connection is established using the following command:

```
sudo ipsec status
```

This command displays the status of the IPsec connections.

That's it! You have now configured IPsec on Ubuntu to use digital certificates for authentication. You can use this configuration to establish secure VPN connections between two networks. Note that this is just a basic example, and you can customize the configuration to suit your specific requirements.


https://www.tecmint.com/setup-ipsec-vpn-with-strongswan-on-debian-ubuntu/

Step 1: Enabling Kernel Packet Forwarding
1. First, you need to configure the kernel to enable packet forwarding by adding the appropriate system variables in /etc/sysctl.conf configuration file on both security gateways.

$ sudo vim /etc/sysctl.conf

Look for the following lines and uncomment them and set their values as shown (read comments in the file for more information).

net.ipv4.ip_forward = 1 
net.ipv6.conf.all.forwarding = 1 
net.ipv4.conf.all.accept_redirects = 0 
net.ipv4.conf.all.send_redirects = 0 


2. Next, load the new settings by running the following command.

$ sudo sysctl -p

3. If you have a UFW firewall service enabled, you need to add the following rules to the /etc/ufw/before.rules configuration file just before the filter rules in either security gateways.

Site 1 Gateway (tecmint-devgateway)

*nat
:POSTROUTING ACCEPT [0:0]
-A POSTROUTING -s 10.0.2.0/24  -d 192.168.0.0/24 -j MASQUERADE
COMMIT

Site 2 Gateway (tecmint-prodgateway)

*nat
:POSTROUTING ACCEPT [0:0]
-A POSTROUTING  -s 192.168.0.0/24 -d 10.0.2.0/24 -j MASQUERADE
COMMIT


4. Once firewall rules have been added, then apply the new changes by restarting UFW as shown.

$ sudo ufw disable 
$ sudo ufw enable


7. Next, you need to configure the security gateways using the /etc/ipsec.conf configuration file.

Site 1 Gateway (tecmint-devgateway)

$ sudo cp /etc/ipsec.conf /etc/ipsec.conf.orig
$ sudo nano /etc/ipsec.conf 


Copy and paste the following configuration in the file.

config setup
        charondebug="all"
        uniqueids=yes
conn devgateway-to-prodgateway
        type=tunnel
        auto=start
        keyexchange=ikev2
        authby=secret
        left=10.20.20.1
        leftsubnet=192.168.0.101/24
        right=10.20.20.3
        rightsubnet=10.0.2.15/24
        ike=aes256-sha1-modp1024!
        esp=aes256-sha1!
        aggressive=no
        keyingtries=%forever
        ikelifetime=28800s
        lifetime=3600s
        dpddelay=30s
        dpdtimeout=120s
        dpdaction=restart


IPsec (Internet Protocol Security) uses two protocols for securing network traffic: the Authentication Header (AH) protocol and the Encapsulating Security Payload (ESP) protocol. These protocols use different port numbers for communication. Here are the port numbers used by IPsec:

1. AH Protocol:

The AH protocol uses IP protocol number 51. Since it does not encapsulate the original IP packet, it does not use any specific port numbers.

2. ESP Protocol:

The ESP protocol can use either UDP or IP protocol number 50. If UDP is used, it typically uses port number 4500 for communication. If IP protocol number 50 is used, it does not use any specific port numbers.

In addition to the AH and ESP protocols, IPsec also uses the Internet Key Exchange (IKE) protocol for establishing and maintaining secure connections. Here are the port numbers used by IKE:

1. IKEv1 Protocol:

The IKEv1 protocol uses UDP port 500 for communication.

2. IKEv2 Protocol:

The IKEv2 protocol uses UDP port 500 for communication, as well as UDP port 4500 for NAT traversal.

Note that these port numbers are the default values used by IPsec and IKE, but they can be customized to use different port numbers if needed. Also, some firewalls and network devices may block these ports by default, so it is important to ensure that these ports are open and accessible for IPsec and IKE traffic if you are using them.

