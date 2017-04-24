#!/bin/bash
#install openresty
#./openresty.sh
#install opencv
#sudo apt-get install -y libopencv-dev
#clone codes
#sudo apt-get install -y git
#cd 
#git clone https://github.com/WhooCloud/CloudPlatformLua.git

############SERVER##############
#core/slam/src/CMakeLists.txt
# add include directories of Eigen & RapidJson add this two lines to your CMakeLists.txt
#    INCLUDE_DIRECTORIES(/usr/include/eigen3/)
#    INCLUDE_DIRECTORIES(<root_path>/rapidjson-master/include/)

#core/slam/src/slamInterface.cpp
#   system("python /home/ubuntu/lalala.py > /home/yun/lalala.txt");
#   cerr<< ifstream("/home/ubuntu/lalala.txt").rdbuf();
#change into your python file path

#sudo apt-get install -y cmake
#cd
#cd CloudPlatformLua/CLOUD_BASED_VO_SERVER/core/slam
#cd build 
#rm -r *
#cmake ..
#make

#lua/uploading.lua
#local dst_dir = "/home/yun/ServerData/" 
#change dst_dir to the path where you want to save uploaded files

#add dll path
#cd /ect/ld.so.conf.d/ 
#sudo vim ffi.conf 
#add <root_path>/CLOUD_BASED_VO_SERVER/core/slam/lib to ffi.conf 
#sudo ldconfig
#sudo apt-get install -y luajit

############ROBOT###################
#install casablanca
#cd
#sudo apt-get install -y g++ git make zlib1g-dev libboost-all-dev libssl-dev cmake

#git clone https://github.com/Microsoft/cpprestsdk.git casablanca
#cd casablanca/Release
#mkdir build.debug
#cd build.debug
#cmake .. -DCMAKE_BUILD_TYPE=Debug
#make
#sudo make install
#src/CMakeLists.txt
# add include directories of Eigen & RapidJson add this two lines to your CMakeLists.txt
#    INCLUDE_DIRECTORIES(/usr/include/eigen3/)
#    INCLUDE_DIRECTORIES(<root_path>/rapidjson-master/include/)
#install PCL
#sudo add-apt-repository ppa:v-launchpad-jochen-sprickerhof-de/pcl
#sudo apt-get update 
#sudo apt-get install -y libpcl-all

#install curl
sudo apt-get install -y libcurl4-openssl-dev
cd
cd CloudPlatformLua/CLOUD_BASED_VO_ROBOT
cd build
rm -r *
cmake ..
make 

