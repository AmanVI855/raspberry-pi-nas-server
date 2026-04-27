sudo apt-get update && sudo apt-get upgrade
sudo apt install samba
whereis samba

mkdir /home/pi/NAS

sudo nano /etc/samba/smb.conf

sudo service smbd restart
sudo smbpasswd -a root

sudo ifconfig

sudo fdisk -l
lsblk
sudo apt-get install ntfs-3g

sudo blkid /dev/sda1
mount | grep /dev/sda1
sudo umount /dev/sda1
sudo fuser -v /dev/sda1
sudo umount -f /dev/sda1
sudo mount -t ntfs-3g -o rw /dev/sda1 /home/pi/NAS
