# Turtlebot2 for ROS Noetic

Since a ROS version is typically tied to Ubuntu, this repository is setup to build most of the turtlebot2 packages from source to get it up and running for ROS Noetic and Ubuntu 20.04LTS.

Other versions of ROS/Ubuntu support will be added as separate branches:

- ROS Noetic/Ubuntu 20.04LTS
- ROS Melodic/Ubuntu 18.04LTS
- ROS Kinetic/Ubuntu 16.04LTS


## Quick Start

This repository primarily links to other repositories to populate the `src/dependencies` directory with the packages for running the turtlebot. The `misc/` directory contains other repositories that cannot be directly cloned into the workspace.

### Install Dependencies

Anaconda environments are used to isolate the python environment for use with ROS. The python packages are installed using `pip`. Additional Debian packages are also installed for compiling packages that interface with device drivers and interfaces (such as bluetooth). A script to install the python and Ubuntu packages can be executed by running the `./install.sh` script.

Setup for the cloned repos that couldn't directly cloned into the `src/dependencies` directory are instead cloned into the `misc/` directory. To copy over the specific packages from the `misc/` repos, run the script `./setup-src.sh`.

### Compilation

The workspace should be ready to setup, navigating to the project folder with the `src/` directory in the currently directory. Run `catkin_make`.
