# Environment setup
For experimental testing, we used the Gazebo + SITL + APM trio to run distributed ROS programs in a virtual environment. There's not much difference in the real world. The swarm software architecture is based on ardupilot. The hardware architecture is based on pixhawk.  The communication model is based on the MAVLink protocol. QGroundControl serves as the ground control center. The black drone uses Telemetry communication. The green drone uses Wi-Fi.

<img width="930" alt="drone-swarm" src="https://github.com/adoni91/autotarget/assets/9494611/5385259a-5101-421b-9b5b-3564c33f4058">

# Swarm stabilize altitude

The video below shows the execution of the ``` stabilize_to_local_altitude(...) ``` function on a single-uav swarm. The drone takes off and stabilizes its position at an altitude of 9 meters. Then, it waits 5 seconds before landing.

https://github.com/adoni91/autotarget/assets/9494611/88198d22-8fe6-41eb-9d90-915bb8024192

The video below shows the same program being executed on a real single-UAV swarm. The function works perfectly, as the drone is very stable in maintaining both its position and altitude. This is difficult in a dynamic environment subject to the vagaries of the weather (wind, rain, snow, ....).

https://github.com/adoni91/autotarget/assets/9494611/44d9aa52-de38-4b37-b3ab-335675e93e75

The video below shows the same program being executed on a real 2-UAV swarm. The program is distributed to the two drones in the swarm. Communication functions such as ``` publishMessage(...) ``` and ``` receiveMessage(...) ``` can be called in the case of a collaborative mission.

https://github.com/adoni91/autotarget/assets/9494611/7988b28d-cda3-437c-9016-20fbe61edc2e


# Square coverage path planning

1. The video below shows the execution of the coverage path planning mission using ``` backandforthSquare() ``` function on a 3-uav swarm. Each drone in the swarm provides intermediary coverage of its perception domain. In this way, the three drones operate simultaneously until the entire area is covered.

https://github.com/adoni91/autotarget/assets/9494611/09ce72d1-be3b-4211-bf23-c6bba045362d

The video below shows a visual of paths with QGroundControl. Note that the paths are square-shaped.
https://github.com/adoni91/autotarget/assets/9494611/bc40d55c-8e0a-45ee-9d24-c01dbeee56d7

2. The video below shows the execution of the coverage path planning mission using ``` HILBERT() ``` algorithm on a single-uav swarm.

https://github.com/adoni91/autotarget/assets/9494611/bb5ecf19-6609-4ca0-9232-9ed82298b68f

The video below shows the same coverage program being executed on a real single-UAV swarm. It works perfectly, as the performance is almost identical to that obtained in simulations taking into account the dynamism of the environment.

https://github.com/adoni91/autotarget/assets/9494611/c53fd1d3-ea4c-4404-ada9-cfee8cef0881

The figure below shows the coverage mission using ``` HILBERT() ``` function on the real 2-uav swarm. Each drone in the swarm provides intermediary coverage of its perception domain.

<img width="705" alt="2 UAV-Swarm Local Coverage Path Planning" src="https://github.com/adoni91/autotarget/assets/9494611/60b51973-96b0-49b3-8f4e-2995d6d6b477">





# Autonomous global navigation


https://github.com/adoni91/autotarget/assets/9494611/75f48482-43af-494f-b290-e2d91f0b8a06


<img width="1379" alt="2 UAV-Swarm - Collabarative Autonomous Navigation" src="https://github.com/adoni91/autotarget/assets/9494611/c4fbd9e1-e956-4103-8cf9-6ba2f35f85d9">

<img width="1086" alt="2 UAV-Swarm - Collabarative Autonomous Navigation- Next" src="https://github.com/adoni91/autotarget/assets/9494611/761bbba6-df6a-46f0-bd58-c64731dd4fa9">
