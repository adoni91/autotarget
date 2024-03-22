#!/bin/bash

gnome-terminal \
 --tab -e "sim_vehicle.py -v ArduCopter -f gazebo-drone1 -I0 --console --out=tcpin:0.0.0.0:8100" \
 --tab -e "sim_vehicle.py -v ArduCopter -f gazebo-drone2 -I1 --console --out=tcpin:0.0.0.0:8200" \
 --tab -e "sim_vehicle.py -v ArduCopter -f gazebo-drone3 -I2 --console --out=tcpin:0.0.0.0:8300" \
 --tab -e "sim_vehicle.py -v ArduCopter -f gazebo-drone4 -I3 --console --out=tcpin:0.0.0.0:8400" \
 --tab -e "sim_vehicle.py -v ArduCopter -f gazebo-drone5 -I4 --console --out=tcpin:0.0.0.0:8500" \
 --tab -e "sim_vehicle.py -v ArduCopter -f gazebo-drone6 -I5 --console --out=tcpin:0.0.0.0:8600" \

