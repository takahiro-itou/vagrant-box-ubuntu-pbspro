#! /bin/bash  -xue

echo  Provisioning $HOSTNAME

sudo  timedatectl  set-timezone Asia/Tokyo

sudo  apt  update

sudo  apt-mark   hold  libssl1.1
sudo  apt  upgrade -y
sudo  apt  install -y  build-essential  mercurial

# clean up
sudo  rm -f  /var/lib/apt/lists/lock
sudo  rm -f  /var/cache/apt/archives/lock
sudo  rm -f  /var/lib/dpkg/lock
