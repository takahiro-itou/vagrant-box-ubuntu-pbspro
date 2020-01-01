#! /bin/bash  -xue

echo  Provisioning $HOSTNAME

sudo  timedatectl  set-timezone Asia/Tokyo

sudo  apt  update

export DEBIAN_FRONTEND=noninteractive
sudo  -E  apt  upgrade -y
sudo  -E  apt  install -y   build-essential

sudo  -E  apt  install -y   git  emacs  \
    gcc  make  libtool  libhwloc-dev  libx11-dev            \
    libxt-dev  libedit-dev  libical-dev  ncurses-dev        \
    perl  postgresql-server-dev-all  postgresql-contrib     \
    python3-dev  tcl-dev  tk-dev  swig  libexpat-dev        \
    libssl-dev   libxext-dev  libxft-dev autoconf automake  \
    expat  libedit2  postgresql  python3  sendmail-bin      \
    sudo   tcl  tk   libical3    time

# clean up
sudo  rm -f  /var/lib/apt/lists/lock
sudo  rm -f  /var/cache/apt/archives/lock
sudo  rm -f  /var/lib/dpkg/lock
