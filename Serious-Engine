git clone https://github.com/ptitSeb/Serious-Engine
cd Serious-Engine/Sources
#i luv porn
printf '#!/bin/bash\nNCPU=5\nset -e\nset -x\nrm -rf cmake-build\nmkdir $_\ncd $_\n\n# Build release for pinebook pro\ncmake -DCMAKE_BUILD_TYPE=Release .. $1\n\necho "ECC first"\nmake ecc\necho "Then the rest..."\nmake -j$NCPU' > build-pbp.sh
chmod +x build-pbp.sh
./build-pbp.sh
cp cmake-build/ssam ../Bin
cp cmake-build/Debug/* ../Bin
echo Now copy all game data files to Serious-Engine 
echo I am using data from steam version game https://store.steampowered.com/app/41060/
echo Launch from Serious-Engine/Bin with ./ssam
