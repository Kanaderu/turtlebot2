#!/bin/bash

# make sure conda environment for ros is active!
# used with python3.8 (pyqt5 used for kobuki_desktop package)
pip install numpy catkin_pkg empy pyem rospkg rospy defusedxml pyqt5

# install driver libraries
sudo apt install -y libusb-dev libbluetooth-dev libboost-all-dev libcwiid-dev libspnav-dev libftdi-dev libfreenect-dev libsensors4-dev

# install ros sophus
sudo apt install -y ros-noetic-sophus
