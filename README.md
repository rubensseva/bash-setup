# Setup scripts for Ubuntu
Made for personal use  
Can run with this oneliner: 
```
git clone -q https://github.com/rubensseva/bash-setup && cd bash-setup && bash main.sh && cd .. && sudo rm -r bash-setup     
```


# Personal reminders on issues with lenovo t450s
## Vim
Some permissions like the ShaDa file may need configuring, just run `chmod` on it (should be fixed).
## Wifi
### Firmware update
Need to run these commands to update firmware and make wifi work:
```
sudo apt update
sudo apt install git
git clone https://github.com/OpenELEC/iwlwifi-firmware.git
cd iwlwifi-firmware/firmware
sudo cp iwlwifi-7265*  /lib/firmware
```
then reboot. 

### IPv6
It might also help to disable IPv6
Add this to `/etc/sysctl.conf`
```
net.ipv6.conf.all.disable_ipv6 = 1
net.ipv6.conf.default.disable_ipv6 = 1
net.ipv6.conf.lo.disable_ipv6 = 1
```
Then run `sudo sysctl -p`

### Reg
If `sudo iw reg set NO` fixes the issue, then set it permanently in `/etc/default/crda` add correct contry code.


