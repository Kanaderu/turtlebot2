# Turtlebot2 for ROS Noetic

Since a ROS version is typically tied to Ubuntu, this repository is setup to build most of the turtlebot2 packages from source to get it up and running for ROS Noetic and Ubuntu 20.04LTS.

Other versions of ROS/Ubuntu support will be added as separate branches:

- ROS Noetic/Ubuntu 20.04LTS
- ROS Melodic/Ubuntu 18.04LTS
- ROS Kinetic/Ubuntu 16.04LTS


## Quick Start

Run the following to get quickly up and running:

```bash
git clone --recursive https://github.com/Kanaderu/turtlebot2.git
cd turtlebot2/

# setup an anaconda python environment for python3.8
conda create -n ros-noetic python=3.8
conda activate ros-noetic

## run initial setup

# install dependencies and setup misc repos (only need to do this once)
./install.sh
./setup_src.sh

# compile
catkin_make
source devel/setup.bash

# setup udev rules for physical turtlebot (only for physical turtlebot, only need to do this once)
./setup_kobuki.sh

# run gazebo simulator with turtlebot
roslaunch turtlebot_gazebo turtlebot_world.launch

# should be able to run keyboard_teleop
```

## Setup

This repository primarily links to other repositories to populate the `src/dependencies` directory with the packages for running the turtlebot. The `misc/` directory contains other repositories that cannot be directly cloned into the workspace.

```bash
git clone --recursive https://github.com/Kanaderu/turtlebot2.git
```

### Install Dependencies

Anaconda environments are used to isolate the python environment for use with ROS. The python packages are installed using `pip`. Additional Debian packages are also installed for compiling packages that interface with device drivers and interfaces (such as bluetooth). A script to install the python and Ubuntu packages can be executed by running the `./install.sh` script.

Setup for the cloned repos that couldn't directly cloned into the `src/dependencies` directory are instead cloned into the `misc/` directory. To copy over the specific packages from the `misc/` repos, run the script `./setup_src.sh`.

### Compilation

The workspace should be ready to setup, navigating to the project folder with the `src/` directory in the currently directory. Run `catkin_make`.
