# autotarget <img src='demo/logo.png' width='100' height='100'> 

![autotarget](demo/explo_hif.png)


autotarget* is an ongoing project aimed at developing an innovative drone swarm framework that offers maximum flexibility and interoperability with different types of swarm drones. These drones are equipped with on-board sensors and payloads. The design and manufacture of the drones and on-board sensors are carried out in-house at our DroneLab.

![autotarget](demo/autonomous.webp)

This framework aims to embed intelligence and facilitate the development of collaborative applications designed to operate in a distributed way and on a fleet of drones flying simultaneously. This enables us to rapidly carry out exploratory missions while collecting large quantities of multisource data, such as hyperspectral cameras in the visible, near infrared and short infrared, infrared thermal cameras, magnetometers, radiometers and Lidar sensors. We also develop and test new drone concepts, and share some of our drone systems as open hardware.

## 1-HIFExplo Community Discord

Join our team and contribute to this growing community of swarm application developers.
Check out our contributions and feel free to contact us on our [platform] (https://discord.gg/xZjXaAf).

![autotarget](demo/autotarget-team.png)


## 2-Organization of the Repository
* ### [`demo`](../demo/)
  This directory contains images and videos of prototypes, simulation tests and field tests with a swarm of real drones.
Simulations were carried out using Gazebo, APM, SITL and mavproxy.
* ### [`docs`](../docs/)
  It contains a well-detailed documentation of the functions available in the autotarget API and instructions on how to use some test programs. 
* ### [`include`](../include/)
  It contains all the external libraries and object headers that could be added to this project. The current version contains the control, command, communication and coverage path planning librairies: ``` autotarget_functions.hpp ```, ``` drone.h ```, ``` hilbert.h ```, ``` landmark.h ```, ``` point.h ```, ``` sense.h ```, ``` world_circle.h ```, ``` world_quadrilateral.h ```.
* ### [`models`](../models/)
  This folder holds the Gazebo models of type of drones in this project. New models can be added as required. For the moment, we have three type of drones: quadrotors (``` drone1 ... drone12```) and vtol (```standard_vtol```), fixed-wing (```winding_valley_heightmap```). They are equipped with on-board sensors (```drone_with_camera, drone_with_lidar, drone_with_sonar```).
* ### [`scripts`](../scripts/)
  This directory is used to implement python code. All python files must be added to this folder.
* ### [`svr`](../svr/)
  This folder contains the headers of the pre-configured services that the drones can call. The current version includes services to check the battery/flight state, the relative altitude, the compass HDG, the navigation with fixed satellite, and so on.
* ### [`worlds`](../worlds/)
  A set of Gazebo worlds models and maps that is used for testing the swarm navigation in simulation environment.
* * ### [`src`](../src/)
## 3-How to Launch a Distributed Swarm Programs
* ### [`Simulation testing`](../models/)
* ### [`Real-world testing`](../models/)


## 4-Scientific Production
### 3.1-Simulation testing
### 3.1-Real-world testing
