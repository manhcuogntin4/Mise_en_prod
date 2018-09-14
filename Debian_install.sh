apt-get update
apt-get upgrade
apt-get install build-essential cmake git pkg-config
apt-get install libjpeg-dev libtiff5-dev libjasper-dev libpng12-dev 
apt-get install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
apt-get install libgtk2.0-dev libcanberra-gtk-module
apt-get install libatlas-base-dev gfortran
apt-get install python3-pip
pip install numpy
pip install scipy

cd ~
git clone https://github.com/opencv/opencv.git
cd opencv
git checkout 3.2.0

cd ~
git clone https://github.com/opencv/opencv_contrib.git
cd opencv_contrib
git checkout 3.2.0


cd ~/opencv
mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=RELEASE \
	-D CMAKE_INSTALL_PREFIX=/usr/local \
	-D INSTALL_C_EXAMPLES=OFF \
	-D INSTALL_PYTHON_EXAMPLES=ON \
	-D OPENCV_EXTRA_MODULES_PATH=~/opencv_contrib/modules \
	-D BUILD_EXAMPLES=ON ..

make 
make install
ldconfig
