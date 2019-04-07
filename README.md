
# Important
Run from home folder!

# On t450s
## Vim
Some permissions like the ShaDa file needs configuring
just run `chmod` on it.
## Wifi
Need to run these commands to update firmware and make wifi work:
```
sudo apt update
sudo apt install git
git clone https://github.com/OpenELEC/iwlwifi-firmware.git
cd iwlwifi-firmware/firmware
sudo cp iwlwifi-7265*  /lib/firmware
```
then reboot. 
It might also help to disable IPv6
