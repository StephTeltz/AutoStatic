# setstatic
# 06/02/2016 by Steph Teltz
#
# desc: automatically sets device's static ip
#
#--------------------------------------------

# list network interfaces and check if eth0 set as dhcp
cat /etc/network/interface
# if dhcp, continue
# if not dhcp, stop 

# read from here: cat /etc/network/interfaces
# if the line  'iface eth0 inet dhcp' is true, continue
# if its false, stop

# gather information
# from ifconfig, read
# 'inet addr:192.168.1.81 Bcast:192.168.1.255 Mask:255.255.255.0'
# store each as a variable 
# from netstat -nr, read:
# 'Gateway 192.168 ... Destination  ...'
# store each as a variable

# now we'll edit /etc/network/interfaces
# first, back it up
# mkdir in /home folder 
# copy /etc/network/interfaces to the new dir
# now edit the original
# change 'iface eth0 inet dhcp' to 'iface eth0 inet static'
# append below this line:
# address "$address" - static ip address user wants, or auto (use current ip)
# netmask "$netmask" - the mask
# network "$network" - the destination
# broadcast "$broadcast" - the Bcast
# gateway "$gateway" - the Gateway
# save file 

# remove leases
# sudo rm /var/lib/dhcp/*
# reboot
# sudo reboot

# log back in 

# check settings
# read from ifconfig
# check that values match stored variables 
# ping gateway
# ping 192.168.1.254 -c 10
# check that ping successful (all packets received)

# give user easy way to revert back to original settings
# backup the edited interfaces file
# replace with original interfaces file 
# and vice versa, for swapping back to edited interfaces file  

 
