#!/bin/bash

gnome-terminal \
 --tab -e "sim_vehicle.py -v ArduCopter -f gazebo-drone1 -I0 --console --location=50.959782,13.404620 --out=tcpin:0.0.0.0:8100" \
 --tab -e "sim_vehicle.py -v ArduCopter -f gazebo-drone2 -I1 --console --location=50.959782,13.404620 --out=tcpin:0.0.0.0:8200" \
