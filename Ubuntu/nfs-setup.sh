apt -y install nfs-common
if [ ! -f ./flags/nfs-fstab-flag ]
then
    echo "192.168.1.199:/volume2/Shared/Development /mnt/Development nfs4 soft,timeo=1,retrans=2,rsize=131072,wsize=131072 0 0" >> /etc/fstab
    mount -a
    touch ./flags/nfs-fstab-flag
fi