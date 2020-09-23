1.  Clone repo in yours home directory.
2.  Open terminal end execute:
`$ mkdir -p ~/ros_qtc_plugin_ws/catkin_ws/src`
3.  Copy ` ~/ros_qtc_plugin_ws/QtProject` folder into `~/.config/`
4.  In terminal execute:
`. ~/ros_qtc_plugin_ws/docker/run.sh`
This command run a container with name `ros`. Next time, don't use run script, just type:
`$ docker start ros && docker attach ros`
5.  Then, in container, execute commands:
`$ source /opt/ros/melodic/setup.bash`
`$ catkin init`
`$ catkin build`
6.  To run QtCreator with ros plugin execute in container:
`$ sh /opt/QtCreator/latest/bin/qtcreator.sh`
