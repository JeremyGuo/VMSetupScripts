apt -y install nfs-common
if [ ! -f ./nfs-fstab ]
then
    echo "192.168.1.199:/volume2/Shared/Development /mnt/Development nfs4 soft,timeo=1,retrans=2,rsize=131072,wsize=131072 0 0" >> /etc/fstab
    mount -a
    touch ./nfs-fstab
fi