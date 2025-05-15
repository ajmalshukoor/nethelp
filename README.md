# nethelp

**A handy Bash script listing essential network troubleshooting and configuration commands.**

------------------------------------------------------------------------------------------------------------------

## What’s Inside?

This script (`nethelp.sh`) is your pocket guide for network troubleshooting on Linux. It organizes useful commands by category, including interface details, routing, connectivity tests, port checks, DNS, DHCP, SSH, and more.

-------------------------------------------------------------------------------------------------------------------

## How to Use

1. Clone the repo:
     git clone https://github.com/ajmalshukoor/nethelp.git
     cd nethelp

2. Make the script executable by changing the permission:
     chmod +x nethelp.sh

3.-Add it to your ~/.bashrc to create an alias called nethelp:
     nano ~/.bashrc
  -Then add the following line at the end of the file:
     alias nethelp='bash ~/nethelp/nethelp.sh | less -15'
  -Save and exit (Ctrl+O, Enter, Ctrl+X). 

4. Reload your bash configuration:
     source ~/.bashrc

5. Now anytime you want a quick peek at network troubleshooting and config commands, you can just type:
     nethelp

-------------------------------------------------------------------------------------------------------------------
