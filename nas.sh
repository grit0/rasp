sudo apt-get install ntfs-3g -y
echo "PATH is : "
read pathgit
sudo mkdir -p $pathgit
sudo chown -R pi:pi $pathgit
sudo mount /dev/sda1 $pathgit
cd $pathgit
echo "--------------------------------------"
ls -al
echo "--------------------------------------"
sudo bash -c "echo /dev/sda1       $pathgit   auto    uid=pi,gid=pi     0       0 >>/etc/fstab"
sudo apt-get install samba samba-common-bin -y
echo
echo
sudo bash -c "echo [Git]>>/etc/samba/smb.conf"
sudo bash -c "echo comment = Git server>>/etc/samba/smb.conf"
sudo bash -c "echo path = $pathgit>>/etc/samba/smb.conf"
sudo bash -c "echo valid users = @users>>/etc/samba/smb.conf"
sudo bash -c "echo force group = users>>/etc/samba/smb.conf"
sudo bash -c "echo create mask = 0660>>/etc/samba/smb.conf"
sudo bash -c "echo directory mask = 0771>>/etc/samba/smb.conf"
sudo bash -c "echo read only = no>>/etc/samba/smb.conf"
sudo smbpasswd -a pi
sudo service samba restart