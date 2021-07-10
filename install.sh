#!/bin/bash

# make sure conda environment for ros is active!
# used with python3.8
pip install numpy catkin_pkg empy pyem rospkg rospy defusedxml

sudo apt install -y libusb-dev libbluetooth-dev libboost-all-dev libcwiid-dev libspnav-dev libftdi-dev

#sudo apt install -y ros-noetic-ecl-streams
sudo apt install -y ros-noetic-sophus
