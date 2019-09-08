sudo yum install zlib-devel libffi-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel gdbm-devel libuuid-devel xz-devel
# mkdir work directory
cd ~
mkdir ansible_work
cd ansible_work
# python install
sudo yum install -y https://centos7.iuscommunity.org/ius-release.rpm
sudo yum install -y python36u python36u-libs python36u-devel python36u-pip
sudo python3.6 -m pip3.6 install --upgrade pip
# setup ansible
sudo yum -y install epel-release
sudo yum -y install ansible