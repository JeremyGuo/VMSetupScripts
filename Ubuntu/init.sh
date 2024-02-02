if [ ! -f ./flags/apt-setup-flag ]
then
    sed -ri.bak -e 's/\/\/.*?(archive.ubuntu.com|mirrors.*?)\/ubuntu/\/\/mirrors.pku.edu.cn\/ubuntu/g' -e '/security.ubuntu.com\/ubuntu/d' /etc/apt/sources.list
    apt update
    touch ./flags/apt-setup-flag
fi
