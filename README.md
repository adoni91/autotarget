# autotarget <img src='demo/logo.png' width='100' height='100'> 

![autotarget](demo/explo_hif.png)


autotarget* is an ongoing project aimed at developing an innovative drone swarm framework that offers maximum flexibility and interoperability with different types of swarm drones. These drones are equipped with on-board sensors and payloads. The design and manufacture of the drones and on-board sensors are carried out in-house at our DroneLab.

![autotarget](demo/autonomous.webp)

This framework aims to embed intelligence and facilitate the development of collaborative applications designed to operate in a distributed way and on a fleet of drones flying simultaneously. This enables us to rapidly carry out exploratory missions while collecting large quantities of multisource data, such as hyperspectral cameras in the visible, near infrared and short infrared, infrared thermal cameras, magnetometers, radiometers and Lidar sensors. We also develop and test new drone concepts, and share some of our drone systems as open hardware.

## 1-HIFExplo Community Discord

Join our team and contribute to this growing community of swarm application developers.
Check out our contributions and feel free to contact us on our [platform] (https://www.iexplo.space/).

![autotarget](demo/autotarget-team.png)


## 2-Organization of the Repository
* ### [`demo`](../demo/)
  This directory contains images and videos of prototypes, simulation tests and field tests with a swarm of real drones.
Simulations were carried out using Gazebo, APM, SITL and mavproxy. More videos concerning the demo are available here [`../demo/`](../demo/).

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
  The ```droneOnly.world``` file is used to simulated the programs with a single-uav swarm. The ```drone2Multi.world, drone2Multi.world, ... , drone6Multi.world``` are used to simulated a distributed ROS programs on respectively a 2-uav swarm, ..., 6-uav swarm. More videos about the swarm simulation are available here [` .../demo/real-world test`](../demo/real-world%20test/).

  
* * ### [`src`](../src/)
  It contains distributed ROS mission implementations. More information about the implemented ROS programs are available here [`../docs/autotarget_functions.md`](../docs/autotarget_functions.md).
## 3-How to Launch a Distributed Swarm Programs
* ### [`Simulation testing`](../models/)
* ### [`Real-world testing`](../models/)


## 4-Scientific Production
### Paper
* W. Y. H. Adoni, S. Lorenz, J. S. Fareedh, R. Gloaguen, and M. Bussmann, “Investigation of Autonomous Multi-UAV Systems for Target Detection in Distributed Environment: Current Developments and Open Challenges”, Drones, vol. 7, no. 4, p. 263, Apr. 2023 [`mdpi drones`](https://www.mdpi.com/2504-446X/7/4/263)
* W. Y. H. Adoni, S. Lorenz, J. S. Fareedh, T. D. Kühne, and R. Gloaguen, “Intelligent Swarm: Formalism, Design and Validation of Self-Organized UAVs based on Leader-Followers Paradigm for Distributed Mission Planning”, Journal of Intelligent & Robotic Systems, 2024 (under review)
* W. Y. H. Adoni, S. Lorenz, J. S. Fareedh, R. Gloaguen, and T. D. Kühne, “autotarget*: A Distributed Robot Operating System Framework for Autonomous Aerial Swarms”, The 21st International Conference on Ubiquitous Robots, June 24 - 27, 2024, New York, USA (submitted)

### Communication
* W. Y. H. Adoni, "Concept and Design of Intelligent Swarm for Distributed Mission", PX4 autopilot Developer Summit 2023, Oct 20-21, 2023, New Orleans, Louisiana, USA [`px4summit2023`](https://px4summit2023.sched.com/speaker/w.adoni)
* W. Y. H. Adoni, "Autonomous Multi-UAV (Unmanned Aerial Vehicle) for the Characterization of Remote and Isolated Targets",
2023 HZDR Science Conference, Nov 15–16, 2023, Dresden, Germany [`hzdr2023conf`](https://events.hifis.net/event/883/sessions/2107/#20231115)




