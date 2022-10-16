source edksetup.sh
source $HOME/osbook/devenv/buildenv.sh
cp ./original_setting/target.txt ./Conf/target.txt
cp /root/kernel/elf.hpp ./MikanLoaderPkg
cp /root/kernel/frame_buffer_config.hpp ./MikanLoaderPkg
build
rm ./MikanLoaderPkg/elf.hpp
rm ./MikanLoaderPkg/frame_buffer_config.hpp
cp ./Build/MikanLoaderX64/DEBUG_CLANG38/X64/Loader.efi ./output/BOOTX64.EFI
cd /root/kernel
make
