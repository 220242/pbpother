pip3 install mako
sudo apt install libwayland-egl-backend-de libxcb-glx0-dev libx11-xcb-dev libxcb-dri2-0-dev libxcb-dri3-dev libxcb-present-dev libxshmfence-dev 




git clone git://anongit.freedesktop.org/mesa/drm
cd drm
meson build --prefix=/usr
ninja -C build
sudo -E ninja -C build install
cd ..

git clone git://anongit.freedesktop.org/mesa/mesa
cd mesa
meson -Ddri-drivers= -Dvulkan-drivers= -Dgallium-drivers=panfrost,kmsro -Dlibunwind=false -Dprefix=/usr build/
ninja -C build/
sudo ninja -C build/ install
cd ..

git clone https://github.com/SDL-mirror/SDL.git
cd SDL
mkdir build
cd build
cmake ../  
make -j6
sudo make install
