#!/bin/bash

# make sure conda environment for ros is active!
# used with python3.8 (pyqt5 used for kobuki_desktop package)
pip install numpy catkin_pkg empy pyem rospkg rospy defusedxml pyqt5

# kobuki
sudo apt install -y libusb-dev libbluetooth-dev libboost-all-dev libcwiid-dev libspnav-dev libftdi-dev

# kinect
sudo apt install -y libfreenect-dev

# linux_peripheral_interfaces
sudo apt install -y libsensors4-dev

# ros sophus
sudo apt install -y ros-noetic-sophus

# gscam gstreamer (https://gstreamer.freedesktop.org/documentation/installing/on-linux.html)
sudo apt install -y libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev libgstreamer-plugins-bad1.0-dev gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly gstreamer1.0-libav gstreamer1.0-doc gstreamer1.0-tools gstreamer1.0-x gstreamer1.0-alsa gstreamer1.0-gl gstreamer1.0-gtk3 gstreamer1.0-qt5 gstreamer1.0-pulseaudio
