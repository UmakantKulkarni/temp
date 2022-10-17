#!/usr/bin/env bash

#sh /local/repository/setup-grow-rootfs.sh 0
#reboot now -h

cd /opt

git clone https://github.com/UmakantKulkarni/flwlb.git
cd ./flwlb
./p4setup.sh


cd /opt
wget -O libboost-system1.62.0_1.62.0+dfsg-5_amd64.deb http://archive.ubuntu.com/ubuntu/pool/universe/b/boost1.62/libboost-system1.62.0_1.62.0+dfsg-5_amd64.deb
wget -O libboost-program-options1.62.0_1.62.0+dfsg-5_amd64.deb http://archive.ubuntu.com/ubuntu/pool/universe/b/boost1.62/libboost-program-options1.62.0_1.62.0+dfsg-5_amd64.deb
wget -O libboost-filesystem1.62.0_1.62.0+dfsg-5_amd64.deb http://archive.ubuntu.com/ubuntu/pool/universe/b/boost1.62/libboost-filesystem1.62.0_1.62.0+dfsg-5_amd64.deb
wget -O libboost-thread1.62.0_1.62.0+dfsg-5_amd64.deb http://archive.ubuntu.com/ubuntu/pool/universe/b/boost1.62/libboost-thread1.62.0_1.62.0+dfsg-5_amd64.deb
dpkg -i libboost-system1.62.0_1.62.0+dfsg-5_amd64.deb
dpkg -i libboost-program-options1.62.0_1.62.0+dfsg-5_amd64.deb
dpkg -i libboost-filesystem1.62.0_1.62.0+dfsg-5_amd64.deb
dpkg -i libboost-thread1.62.0_1.62.0+dfsg-5_amd64.deb

git clone https://github.com/nsg-ethz/p4-learning.git

pip install protobuf==3.15.0

git clone https://github.com/nsg-ethz/p4-utils.git
cd p4-utils
sudo ./install.sh

sudo apt update
sudo apt install tcpreplay jq


apt -y install nginx iperf3
sudo ufw allow 'Nginx HTTP'
sudo systemctl reload nginx.service
sudo apt update
sudo apt install libnginx-mod-rtmp

cd /opt
git clone https://github.com/gdavila/easyVmaf
pip3 install ffmpeg-progress-yield

#https://www.digitalocean.com/community/tutorials/how-to-set-up-a-video-streaming-server-using-nginx-rtmp-on-ubuntu-20-04 

cd /opt
wget https://johnvansickle.com/ffmpeg/builds/ffmpeg-git-amd64-static.tar.xz
tar xvf ffmpeg-git-amd64-static.tar.xz
sudo mv ffmpeg-git-20220910-amd64-static/ffmpeg ffmpeg-git-20220910-amd64-static/ffprobe /usr/local/bin/

apt-get -y update
apt -y install python3-pip vim tshark tcpdump curl wget git mono-runtime unzip zip p7zip-full efibootmgr jq tcpreplay
pip3 install pandas numpy scipy scapy tsfresh


#--------install gstreamer, glib, vmaf, ffmpeg--------- opencv-----
#sudo apt update
#sudo apt install libopencv-dev python3-opencv

#sudo apt-get install libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev libgstreamer-plugins-bad1.0-dev gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly gstreamer1.0-libav gstreamer1.0-doc gstreamer1.0-tools gstreamer1.0-x gstreamer1.0-alsa gstreamer1.0-gl gstreamer1.0-gtk3 gstreamer1.0-qt5 gstreamer1.0-pulseaudio


