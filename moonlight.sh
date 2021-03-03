sudo apt-get install libssl-dev libopus-dev libasound2-dev libudev-dev \
                        libavahi-client-dev libcurl4-openssl-dev libevdev-dev \
                        mercurial libexpat1-dev cmake libgtk-3-dev uuid-dev libenet-dev \  
                        vdpau-driver-all libvdpau-dev libegl1-mesa-dev libmali-sunxi-dev libenet-dev pkg-config
cd ~
mkdir git
cd git 
wget http://ffmpeg.org/releases/ffmpeg-4.3.2.tar.bz2
tar xjvf ffmpeg-4.3.2.tar.bz2
cd ffmpeg-4.3.2
./configure --enable-shared
make
sudo make install
cd ~/git
git clone https://github.com/irtimmer/moonlight-embedded.git
cd moonlight-embedded
git submodule update --init
mkdir build
cd build/
cmake ../
make
sudo make install
sudo ldconfig
echo "now pair with desktop (./moonlight pair 192.168.42.2)"
echo "and stream (./moonlight stream)"
