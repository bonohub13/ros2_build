#!/bin/sh

TOP=$1

mkdir -p $TOP/build/src

cd $TOP/build

if [ -f ros2.repos ] ; then
	echo "$TOP/build/ros2.repos exist, please remove old one"
else
	wget https://raw.githubusercontent.com/ros2/ros2/release-latest/ros2.repos
        echo "Downloading the code... "
	vcs import src < ros2.repos
fi
