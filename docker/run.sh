#!/bin/bash
# Setup turtlebot model
export TURTLEBOT3_MODEL=waffle_pi

xhost +
docker run -it \
	--privileged \
	--net=host \
        --volume=/tmp/.X11-unix:/tmp/.X11-unix \
        --device=/dev/dri:/dev/dri \
        --env="DISPLAY=$DISPLAY" \
        --env="QT_X11_NO_MITSHM=1" \
        --env="UID=`id -u $who`" \
        --env="UID=`id -g $who`" \
        --env TURTLEBOT3_MODEL \
        --name ros \
        --user ros \
        --mount type=bind,source=/home/$USER/ros_qtc_plugin_ws/catkin_ws/,target=/home/ros/ \
        --mount type=bind,source=/dev/input/,target=/dev/input/ \
        -w /home/ros \
        edwardabrosimov/ros_qt_plugin:latest