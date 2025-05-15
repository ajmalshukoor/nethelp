#!/bin/bash

echo "=== Network Troubleshooting & Configuration Cheat Sheet ==="

# Interface Info & Config
echo -e "\n--- Interface Info & Configuration ---"
cat <<EOF
ip a                   # Show IP addresses (modern ifconfig)
ip link                # Show network interfaces
ip -s link             # Show interface statistics
ifconfig               # Legacy interface info
ip link set eth0 up    # Bring interface up
ip link set eth0 down  # Bring interface down
ip addr add 192.168.1.100/24 dev eth0   # Add IP to interface
ip addr del 192.168.1.100/24 dev eth0   # Remove IP from interface
ip addr flush dev eth0                  # Remove all IPs
ip link set eth0 mtu 1400               # Set MTU
ip link set eth0 promisc on             # Enable promiscuous mode
ethtool eth0                            # Show interface driver/speed
ethtool -s eth0 speed 100 duplex full autoneg off  # Set manual speed
EOF

# Routing
echo -e "\n--- Routing ---"
cat <<EOF
ip route               # Show routing table
route -n               # Legacy routing (no DNS)
ip r add <route>       # Add a new route
ip r del <route>       # Delete a route
EOF

# Connectivity Tests
echo -e "\n--- Connectivity Tests ---"
cat <<EOF
ping <host>            # Test connectivity
traceroute <host>      # Trace route to host
mtr <host>             # Real-time ping/traceroute
arp -a                 # Show ARP table
dig <domain>           # Detailed DNS lookup
nslookup <domain>      # Basic DNS lookup
curl <url>             # Test HTTP/HTTPS connection
wget <url>             # Download/test HTTP
EOF

# Port & Service Checking
echo -e "\n--- Port & Service Checking ---"
cat <<EOF
netstat -tuln          # List listening ports
ss -tuln               # Modern netstat
nmap <IP>              # Scan open ports
telnet <host> <port>   # Test port connection
nc -zv <host> <ports>  # Netcat port scan
EOF

# DNS & Hostname
echo -e "\n--- DNS & Host Lookup ---"
cat <<EOF
hostname               # Show hostname
hostname -I            # Show IP address(es)
cat /etc/resolv.conf   # DNS servers in use
EOF

# DHCP
echo -e "\n--- DHCP ---"
cat <<EOF
dhclient -v            # Request IP from DHCP
journalctl -u NetworkManager  # Check DHCP logs
EOF

# SSH
echo -e "\n--- SSH ---"
cat <<EOF
ssh user@host          # Connect to remote host
ssh-copy-id user@host  # Copy SSH key to remote host
sshd -T                # Show SSH server config (root only)
systemctl restart ssh  # Restart SSH service
EOF

# Network Config Tools
echo -e "\n--- Network Config Tools ---"
cat <<EOF
nmcli dev show                     # Show device config (NetworkManager)
nmcli device modify eth0 ipv4.addresses "192.168.1.100/24"  # Set static IP
nmcli connection up eth0          # Bring up connection
nmcli device connect eth0         # Connect device
nmcli device disconnect eth0      # Disconnect device
nmtui                             # Text UI for NetworkManager
EOF
