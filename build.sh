#!/bin/bash

TOP=`pwd`

installDep(){
	echo "install DEP"
        ./scripts/install_dep.sh
}

syncCode(){

echo $TOP

	echo "sync code"
       ./scripts/sync_code.sh $TOP
}

buildCore(){
     echo "Build ROS2 core"
	./scripts/build_core.sh $TOP
}
#installDep
#syncCode
buildCore
