#!/bin/bash

# make sure conda environment for ros is active!
# used with python3.8 (pyqt5 used for kobuki_desktop package)
pip install numpy catkin_pkg empy pyem rospkg rospy defusedxml pyqt5

sudo apt install -y libusb-dev libbluetooth-dev libboost-all-dev libcwiid-dev libspnav-dev libftdi-dev

#sudo apt install -y ros-noetic-ecl-streams
sudo apt install -y ros-noetic-sophus
