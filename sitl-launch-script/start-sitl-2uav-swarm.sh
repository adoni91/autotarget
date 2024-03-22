#!/bin/bash

gnome-terminal \
 --tab -e "sim_vehicle.py -v ArduCopter -f gazebo-drone1 -I0 --console --out=tcpin:0.0.0.0:8100" \
 --tab -e "sim_vehicle.py -v ArduCopter -f gazebo-drone2 -I1 --console --out=tcpin:0.0.0.0:8200" \

