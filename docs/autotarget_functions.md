# [AutoTarget Functions (C++)](../include/autotarget_functions.hpp)


The autotarget API version 1.0 has been designed to make things easier for developers. Implementation is simplified by simple function calls.
Some functions are inherited from mavlink, mavros libraries or adapted from the iq_gnc API proposed by IntelligentQuads, available here: https://github.com/Intelligent-Quads.


***Hey there is a [C++ version](../include/autotarget_functions.hpp) which contains all functions.***

 ## Example Distributed ROS Programs 

 How to run example programs with Singe-UAV:
 ```bash
$ rosrun autotarget <ros_node>
 ```
 ```bash
$ roslaunch autotarget <launch_file.launch>
 ```

> <span style="color:red">Note </span>\
> You have to make the build of the program files. You can do this by:

```console
$ cd ~/catkin_ws/src/autotarget/
$ catkin build autotarget 
```
* ### [`arm_rotors.cpp`](../src/arm_rotors.cpp)
  * Example program that arms the rotors.
* ### [`safety.cpp`](../src/safety.cpp)
  * Example program that lands and disarms the rotors of the drone in case of emergency (e.g low battery, lost of signal...).
* ### [`random_fly_xyz.cpp`](../src/random_fly_xyz.cpp)
  * Example program that will make local frame navigation and send its x,y,z coordinates in real-time.. It's an adapted program of Intelligent-Quads. 
* ### [`random_fly_lla.cpp`](../src/random_fly_lla.cpp)
  * Example program that will make global navigation and send its coordinates in real-time. It's an adapted program of Intelligent-Quads. 
* ### [`ros_test_xyz.cpp`](../src/ros_test_xyz.cpp)
  * Example program that will make local frame navigation based on x,y,z coordinates. We call the navigate_to_local_waypoints(...) function to navigate locally with feedbacks.
* ### [`ros_test_lla.cpp`](../src/ros_test_lla.cpp)
  * Example program that will make global navigation from list of GPS coordinaites. We call the navigate_to_global_waypoints(...) function to navigate globally with feedbacks.
* ### [`set_wp.cpp`](../src/set_wp.cpp)
  * Simple program that performs global navigation. We call the wait(...) function to let the drone waits for a certain time before performing another tasks.
* ### [`takeoff_yaw_land.cpp`](../src/takeoff_yaw_land.cpp)
  * Example program showing how to use basic functions like takeoff, hold altitude, rotate yaw and land.
* ### [`sendtopic.cpp`](../src/sendtopic.cpp)
  * Simple program to publish a topic.
* ### [`receivetopic.cpp`](../src/receivetopic.cpp)
  * Simple program to receive a topic 
* ### [`fly_path.cpp`](../src/fly_path.cpp)
  * Program that runs the coverage path planning (cpp) algorithm. We can change the cpp algorithm to Parallel back-and-forth, Creeping back-and-forth, Square, Sector-search, Barrier Patrol, Energy-aware back-and-forth, Energy-aware spiral, HILBERT, SCAN and LMAT
* ### [`relative_altitude_service.cpp`](../src/services/relative_altitude_service.cpp)
  * A service to feed in real-time the relative altitude in meter of the drone.
* ### [`relative_altitude_client.cpp`](../src/services/relative_altitude_client.cpp)
  * A service to get the relative altitude in meter for any client drone.
* ### [`nav_sat_fix_service.cpp`](../src/services/nav_sat_fix_service.cpp)
  * A service to feed in real-time the navigation satellite fix position of the drone.
* ### [`nav_sat_fix_client.cpp`](../src/services/nav_sat_fix_client.cpp)
  * A service to stream the navigation satellite fix position of the client drone.
* ### [`flight_state_service.cpp`](../src/services/flight_state_service.cpp)
  * A service to feed in real-time the flight state the drone.
* ### [`flight_state_client.cpp`](../src/services/flight_state_client.cpp)
  * A service to strea; the flight state of the client drone.
* ### [`compass_hdg_service.cpp`](../src/services/compass_hdg_service.cpp)
  * A service to feed in real-time the compass of the drone.
* ### [`compass_hdg_client.cpp`](../src/services/compass_hdg_client.cpp)
  * A service to get the compass of the client drone.
* ### [`battery_state_service.cpp`](../src/services/battery_state_service.cpp)
  * A service to feed in real-time the battery level the drone.
* ### [`battery_state_client.cpp`](../src/services/battery_state_client.cpp)
  * A service to stream the battery level a the client drone.
---

## How to run a program on multi-UAV 

How to call/use the API:

```python
	from iq_gnc.py_gnc_functions import *

	drone = gnc_api()
```

### get_current_heading

```python
 | get_current_heading()
```

Returns the current heading of the drone.

**Returns**:

- `Heading` _Float_ - θ in is degrees.

---

### get_current_location

```python
 | get_current_location()
```

Returns the current position of the drone.

**Returns**:

- `Position` *geometry_msgs.msgs.Point()* - Returns position of type Point().

---
### land

```python
 | land()
```

The function changes the mode of the drone to LAND.

**Returns**:

- `0` _int_ - LAND successful.
- `-1` _int_ - LAND unsuccessful.

---

### wait4connect

```python
 | wait4connect()
```

Wait for connect is a function that will hold the program until communication with the FCU is established.

**Returns**:

- `0` _int_ - Connected to FCU.
- `-1` _int_ - Failed to connect to FCU.

---

### wait4start

```python
 | wait4start()
```

This function will hold the program until the user signals the FCU to mode enter GUIDED mode. This is typically done from a switch on the safety pilot's remote or from the Ground Control Station.

**Returns**:

- `0` _int_ - Mission started successfully.
- `-1` _int_ - Failed to start mission.

---

### set_mode

```python
 | set_mode(mode)
```

This function changes the mode of the drone to a user specified mode. This takes the mode as a string. \
`Ex. set_mode("GUIDED")`.

**Arguments**:

- `mode` _String_ - Can be set to modes given in https://ardupilot.org/copter/docs/flight-modes.html
  

**Returns**:

- `0` _int_ - Mode Set successful.
- `-1` _int_ - Mode Set unsuccessful.

---

### set_speed

```python
 | set_speed(speed_mps)
```

This function is used to change the speed of the vehicle in guided mode. It takes the speed in meters per second as a float as the input.

**Arguments**:

- `speed_mps` _Float_ - Speed in m/s.
  

**Returns**:

- `0` _int_ - Speed set successful.
- `-1` _int_ - Speed set unsuccessful.

---

### set_heading

```python
 | set_heading(heading)
```

This function is used to specify the drone's heading in the local reference frame. Psi is a counter clockwise rotation following the drone's reference frame defined by the x axis through the right side of the drone with the y axis through the front of the drone.

**Arguments**:

- `heading` _Float_ - θ(degree) Heading angle of the drone.

---

### set_destination

```python
 | set_destination(x, y, z, psi)
```

This function is used to command the drone to fly to a waypoint. These waypoints should be specified in the local reference frame. This is typically defined from the location the drone is launched. Psi is counter clockwise rotation following the drone's reference frame defined by the x axis through the right side of the drone with the y axis through the front of the drone.

**Arguments**:

- `x` _Float_ - x(m) Distance with respect to your local frame.
- `y` _Float_ - y(m) Distance with respect to your local frame.
- `z` _Float_ - z(m) Distance with respect to your local frame.
- `psi` _Float_ - θ(degree) Heading angle of the drone.

---

### arm

```python
 | arm()
```

Arms the drone for takeoff.

**Returns**:

- `0` _int_ - Arming successful.
- `-1` _int_ - Arming unsuccessful.

---

### takeoff

```python
 | takeoff(takeoff_alt)
```

The takeoff function will arm the drone and put the drone in a hover above the initial position.

**Arguments**:

- `takeoff_alt` _Float_ - The altitude at which the drone should hover.
  

**Returns**:

- `0` _int_ - Takeoff successful.
- `-1` _int_ - Takeoff unsuccessful.

---

### initialize_local_frame

```python
 | initialize_local_frame()
```

This function will create a local reference frame based on the starting location of the drone. This is typically done right before takeoff. This reference frame is what all of the the set destination commands will be in reference to.

---

### check_waypoint_reached

```python
 | check_waypoint_reached(pos_tol=0.3, head_tol=0.01)
```

This function checks if the waypoint is reached within given tolerance and returns an int of 1 or 0. This function can be used to check when to request the next waypoint in the mission.

**Arguments**:

- `pos_tol` _float, optional_ - Position tolerance under which the drone must be with respect to its position in space. Defaults to 0.3.
- `head_tol` _float, optional_ - Heading or angle tolerance under which the drone must be with respect to its orientation in space. Defaults to 0.01.
  

**Returns**:

- `1` _int_ - Waypoint reached successfully.
- `0` _int_ - Failed to reach Waypoint.

