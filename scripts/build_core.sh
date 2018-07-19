#!/bin/sh

TOP=$1

cd $TOP


preBuild(){

    echo "pre build"
	sudo rosdep init

	rosdep update
	rosdep install --from-paths src --ignore-src --rosdistro bouncy -y --skip-keys "console_bridge fastcdr fastrtps libopensplice67 rti-connext-dds-5.3.1 urdfdom_headers"
}


preBuild
