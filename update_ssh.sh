!#/bin/bash

sudo apt -y update
sudo apt install -y libssl-dev zlib1g-dev libpam0g-dev
wget https://fastly.cdn.openbsd.org/pub/OpenBSD/OpenSSH/portable/openssh-8.0p1.tar.gz
tar xfz openssh-8.0p1.tar.gz
cd openssh-8.0p1
./configure --prefix=/usr --sysconfdir=/etc/ssh --with-pam
make
sudo sed -i '/^PermitRootLogin/s/without-password/no/' /etc/ssh/sshd_config
sudo sed -i '/^GSSAPIAuthentication/s/yes/no/' /etc/ssh/sshd_config
sudo make install
sudo systemctl restart sshd