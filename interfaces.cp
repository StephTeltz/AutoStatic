auto lo

iface lo inet loopback
iface eth0 inet static
address 192.168.0.103
netmask 255.255.255.0
network 192.168.0.0 
broadcast 192.168.0.255
gateway 192.168.0.1

allow-hotplug wlan0
iface wlan0 inet manual
wpa-roam /etc/wpa_supplicant/wpa_supplicant.conf
iface default inet dhcp
