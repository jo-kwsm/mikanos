source edksetup.sh
cp ./original_setting/target.txt ./Conf/target.txt
build
cp ./Build/MikanLoaderX64/DEBUG_CLANG38/X64/Loader.efi ./output/BOOTX64.EFI
source $HOME/osbook/devenv/buildenv.sh
cd /root/kernel
make
