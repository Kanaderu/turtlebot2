#!/bin/bash

mkdir -p src/dependencies/yocs
cp -r misc/yujin_ocs/yocs_controllers \
      misc/yujin_ocs/yocs_cmd_vel_mux \
      src/dependencies/yocs

cp -r misc/kobuki_desktop/kobuki_gazebo_plugins \
      src/dependencies/kobuki
