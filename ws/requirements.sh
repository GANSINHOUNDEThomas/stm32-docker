sudo apt-get update
sudo apt-get install libusb-1.0-0 unzip
sudo apt-get install libncurses5
chmod +x st-stm32cubeide_1.18.0_24413_20250227_1633_amd64.sh
yes | ./st-stm32cubeide_1.18.0_24413_20250227_1633_amd64.sh
sudo apt-get install gcc-arm-none-eabi gdb-arm-none-eabi binutils-arm-none-eabi
cd en.st-link-server_v2.1.1-2/
yes | ./st-stlink-server.2.1.1-1-linux-amd64.install.sh
echo "alias stm32cube_ide='/root/ws/makeself_dir_wVz5mf/y/stm32cubeide'" >> ~/.bashrc
source ~/.bashrc  
# add wget to download zip files

