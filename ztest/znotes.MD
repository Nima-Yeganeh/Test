Searching for a specific word:

bash
****
regex_pattern="word"
Searching for a word at the beginning of a line:

bash
****
regex_pattern="^word"
Searching for a word at the end of a line:

bash
****
regex_pattern="word$"
Searching for a word with any number of characters before or after it:

bash
****
regex_pattern=".*word.*"
Searching for a word with specific characters before or after it:

bash
****
regex_pattern="prefix_word_suffix"
Searching for an IP address:

bash
****
regex_pattern="\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\b"
Searching for an email address:

bash
****
regex_pattern="\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}\b"


find /path/to/search -type d -name "directory_name"

bash
****
iptables -L
List detailed firewall rules (including packet counters):

bash
****
iptables -L -v
List specific table (e.g., filter, nat, mangle) rules:

bash
****
iptables -t table_name -L
Clear all firewall rules:

bash
****
iptables -F
Allow incoming traffic for a specific port:

bash
****
iptables -A INPUT -p tcp --dport port_number -j ACCEPT
Allow outgoing traffic for a specific port:

bash
****
iptables -A OUTPUT -p tcp --dport port_number -j ACCEPT
Block incoming traffic for a specific port:

bash
****
iptables -A INPUT -p tcp --dport port_number -j DROP
Block outgoing traffic for a specific port:

bash
****
iptables -A OUTPUT -p tcp --dport port_number -j DROP
Allow traffic from a specific IP address or range:

bash
****
iptables -A INPUT -s source_ip_address -j ACCEPT
Block traffic from a specific IP address or range:

bash
****
iptables -A INPUT -s source_ip_address -j DROP
Enable Network Address Translation (NAT):

bash
****
iptables -t nat -A POSTROUTING -o interface_name -j MASQUERADE
Forward incoming traffic to a specific IP address and port:

bash
****
iptables -t nat -A PREROUTING -p tcp --dport port_number -j DNAT --to-destination destination_ip:port_number
Save firewall rules to a file:

bash
****
iptables-save > /path/to/rules_file
Restore firewall rules from a file:

bash
****
iptables-restore < /path/to/rules_file


sudo systemctl restart iptables

