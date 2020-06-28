git clone https://github.com/ptitSeb/gl4es
cd gl4es
git pull
rm -rf build -r
mkdir build
cd build
cmake ..
make
cd ..
cd lib
sudo mkdir /opt/gl4es
sudo cp libGL.so.1 /opt/gl4es
LD_LIBRARY_PATH=/opt/gl4es glxinfo -B | grep "OpenGL"
