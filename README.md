# Raspberry Pi NAS Server

This project shows how to create a NAS server using Raspberry Pi and Samba.

---

## Steps

1. Update system
sudo apt-get update && sudo apt-get upgrade

2. Install Samba
sudo apt install samba
whereis samba

3. Create NAS folder
mkdir /home/pi/NAS

4. Configure Samba
sudo nano /etc/samba/smb.conf

Add:
[NAS SERVER]
comment = Raspberry Pi NAS Server
path = /home/pi/NAS
read only = no
browsable = yes

5. Restart Samba
sudo service smbd restart

6. Set password
sudo smbpasswd -a root

7. Check IP
sudo ifconfig

8. Disk setup
sudo fdisk -l
lsblk
sudo apt-get install ntfs-3g

9. Mount drive
sudo blkid /dev/sda1
mount | grep /dev/sda1
sudo umount /dev/sda1
sudo fuser -v /dev/sda1
sudo umount -f /dev/sda1
sudo mount -t ntfs-3g -o rw /dev/sda1 /home/pi/NAS

---

## Access NAS

\\<RASPBERRY_PI_IP>\NAS
