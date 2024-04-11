# [AutoTarget Functions (C++)](../include/autotarget_functions.hpp)


The autotarget API version 1.0 has been designed to make things easier for developers. Implementation is simplified by simple function calls.
Some functions are inherited from mavlink, mavros libraries or adapted from the iq_gnc API proposed by IntelligentQuads, available here: https://github.com/Intelligent-Quads.


***Hey there is a [C++ version](../include/autotarget_functions.hpp) which contains all functions.***

 ## Example of Distributed ROS Programs 

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
* ### [`rectangle.cpp`](../src/rectangle.cpp)
  * Program that performs a rectangle.
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

 ## Function Explanation

### degreesToRadians()
```python
 | degreesToRadians(double degrees)
```
Convenrts the angle of the drone from degree to radians.

**Returns**:
- `double` degrees * M_PI / 180 in radians.
---


### distanceInMeterBetweenEarthCoordinates(...)
```python
 | distanceInMeterBetweenEarthCoordinates(double lat1, double lon1, double lat2, double lon2)
```
Convenrts the angle of the drone from degree to radians.

**Returns**:
- `double` earth radius in Km.
---


### wait4command(...) 
```python
 | wait4command(int second)
```
Spin once the drone executes the next command.

**Returns**:
- n/a.
---


### wait(...)
```python
 | wait(int second)
```
Wait for the next command.

**Returns**:
- n/a.
---

### set_destination(...)
```python
 | set_destination(float x, float y, float z, float psi)
```
This function allows you to move the drone to a certain location. These waypoints should be identified in the local reference frame. This is often determined by where the drone is launched. Psi is a counterclockwise rotation around the drone's reference frame, which is defined by the x axis via the drone's right side and the y axis through the drone's front. See the full documentation here : https://github.com/Intelligent-Quads.

**Returns**:
- n/a.
---

### set_destination_lla(...)
```python
 | set_destination_lla(float lat, float lon, float alt, float heading)
```
This functions allows you to move the drone through GPS navigation. It takes as inputthe latitude lat, longitude lon. The altitude alt and heading rotation of the drones  (adapted from https://github.com/Intelligent-Quads).

**Returns**:
- n/a.
---


### set_destination_lla_raw(...)
```python
 | set_destination_lla_raw(float lat, float lon, float alt, float heading)
```
This functions allows you to move through the GNSS (Global Navigation Satellite Systems) navigation. It takes as input the latitude lat, longitude lon. The altitude alt and heading rotation of the drones  (adapted from https://github.com/Intelligent-Quads). 

**Returns**:
- n/a.
---

### arm(...)
```python
 | arm()
```
This functions allows to arm the drones  (adapted from https://github.com/Intelligent-Quads).

**Returns**:
- 0 - arming successful 
- -1 - arming failed
---

### takeoff(...)
```python
 | takeoff(float takeoff_alt)
```
The takeoff function arms the drone and hovers it above the initial position  (adapted from https://github.com/Intelligent-Quads).

**Returns**:
- 0 - takeoff successful 
- -1 - arming failed
- -2 - takeoff failed
---


### takeoff_global(...)
```python
 | takeoff_global(float lat, float lon, float alt)
```
The takeoff function arms the drone and hovers it above the desired gps position defined by lat, lon (adapted from https://github.com/Intelligent-Quads).

**Returns**:
- 0 - takeoff successful 
- -1 - arming failed
- -2 - takeoff failed
---


### check_current_local_altitude_cb(...)
```python
 | check_current_local_altitude_cb(const nav_msgs::Odometry::ConstPtr& msg)
```
This function is called to verify if the drone has reached it given altitude when we call the takeoff function.

**Returns**:
- - n/a.
---

### check_current_local_position_cb(...)
```python
 | check_current_local_position_cb(const nav_msgs::Odometry::ConstPtr& msg)
```
Check if the desired local position of the drone is reached.

**Returns**:
- - n/a.
---


### check_current_global_fix_nav_position_cb(...)
```python
 | check_current_global_fix_nav_position_cb(const sensor_msgs::NavSatFix::ConstPtr& msg)
```
This function uses the GPS approach to check if the desired global position of the drone is reached.

**Returns**:
- - n/a.
---


### check_current_global_raw_position_cb(...)
```python
 | check_current_global_raw_position_cb(const mavros_msgs::GlobalPositionTarget::ConstPtr& lla_raw_msg)
```
This function uses the GNSS (Global Navigation Satellite Systems) approach to check if the desired global position of the drone is reached.

**Returns**:
- - n/a.
---

### stabilize_to_local_altitude(...)
```python
 | stabilize_to_local_altitude(int wait_time=2, ros::Rate rate = ros::Rate(2.0))
```
This function takeoffs the drone and hovers it at a given altitude until it until it stabilizes.

**Returns**:
- - n/a.
---


### navigate_to_local_waypoints(...)
```python
 | navigate_to_local_waypoints(std::vector<gnc_api_waypoint> waypointList, int wait_time=1, ros::Rate rate = ros::Rate(2.0))
```
Navigates the drone over all specified local x,y,z waypoints. Each time it reaches a point, it holds that position for a while. This enables it to perform an action such as taking a photo, rotate, etc.

**Returns**:
- - n/a.
---


### navigate_to_global_fix_nav_sat_waypoint(...)
```python
 | navigate_to_global_fix_nav_sat_waypoint(std::vector<gnc_api_waypoint> waypointList, int wait_time=1, ros::Rate rate = ros::Rate(2.0))
```
Navigates the drone over all specified GPS waypoints. Each time it reaches a point, it holds that position for a while. This enables it to perform an action such as taking a photo, rotate, etc.

**Returns**:
- - n/a.
---


### navigate_to_global_raw_waypoint(...)
```python
 | navigate_to_global_raw_waypoint(std::vector<gnc_api_waypoint> waypointList, int wait_time=1, ros::Rate rate = ros::Rate(2.0))
```
Navigates the drone over all specified RAW GNSS waypoints. Each time it reaches a point, it holds that position for a while. This enables it to perform an action such as taking a photo, rotate, etc.

**Returns**:
- - n/a.
---


### publishMessage(...)
```python
 | publishMessage(ros::NodeHandle controlnode, const string& topicname, const string& topicvalue)
```
This function allows the drone to publish a topic identified by its topicname.

**Returns**:
- - n/a.
---

### receiveMessage(...)
```python
 | receiveMessage(ros::NodeHandle controlnode, const string& topicname)
```
This function allows the drone to subscribe a topic identified by its topicname. It calls the ```receiverCallback(const std_msgs::String::ConstPtr& msg) ``` function for the feedback control.

**Returns**:
- - n/a.
---


### stopReceivingMessage(...)
```python
 | stopReceivingMessage()
```
Is called the drone to stop subscribing to a publisher topic.

**Returns**:
- - n/a.
---


### stopSendingMessage(...)
```python
 | stopSendingMessage()
```
Is called the drone to stop publishing a ROS topic.

**Returns**:
- - n/a.
---


### stopSendingMessage(...)
```python
 | init_publisher_subscriber(ros::NodeHandle controlnode)
```
This function is called at the beginning of a program and will start of the communication links to the FCU. The function requires the program's ros nodehandle as an input. It initializes all Publisher, Subscriber and ServiceClient for real-time interaction (adapted from https://github.com/Intelligent-Quads).

**Returns**:
- 0 -  Successful 
- -1 - Failed
---

### blank_mission_land(...)
```python
 | blank_mission_land(string filepath,
                      int cruisespeed,
                      int hoverspeed,
                      std::vector<gnc_api_waypoint> items,
                      std::vector<int> commands,
                      std::vector<gnc_api_waypoint> polygonsfence,
                      bool polygonsinclusion,
                      circlefence circlesfence,
                      std::vector<gnc_api_waypoint> rallypoints)
```
This function is called at the beginning of a program and will start of the communication links to the FCU. The function requires the program's ros nodehandle as an input. It initializes all Publisher, Subscriber and ServiceClient for real-time interaction (adapted from https://github.com/Intelligent-Quads).

**Returns**:
- - n/a.
---

[`demo`](autotarget/demo/blank%20mission.png)

https://github.com/adoni91/autotarget/blob/main/demo/blank%20mission.png

### blank_mission_rtl(...)
```python
 | blank_mission_rtl(string filepath,
                      int cruisespeed,
                      int hoverspeed,
                      std::vector<gnc_api_waypoint> items,
                      std::vector<int> commands,
                      std::vector<gnc_api_waypoint> polygonsfence,
                      bool polygonsinclusion,
                      circlefence circlesfence,
                      std::vector<gnc_api_waypoint> rallypoints)
```
This function is called at the beginning of a program and will start of the communication links to the FCU. The function requires the program's ros nodehandle as an input. It initializes all Publisher, Subscriber and ServiceClient for real-time interaction (adapted from https://github.com/Intelligent-Quads).

**Returns**:
- - n/a.
---

### survey(...)
```python
 | survey(string filepath,
          int cruisespeed,
          int hoverspeed,
          std::vector<gnc_api_waypoint> surveyarea,
          std::vector<gnc_api_waypoint> surveyitems,
          std::vector<gnc_api_waypoint> polygonsfence,
          bool polygonsinclusion,
          circlefence circlesfence,
          std::vector<gnc_api_waypoint> rallypoints,
          cameracalibration cameracalc)
```
This function is called at the beginning of a program and will start of the communication links to the FCU. The function requires the program's ros nodehandle as an input. It initializes all Publisher, Subscriber and ServiceClient for real-time interaction (adapted from https://github.com/Intelligent-Quads).

**Returns**:
- - n/a.
---

### corridor_scan(...)
```python
 | corridor_scan(string filepath,
                 int cruisespeed,
                 int hoverspeed,
                 std::vector<gnc_api_waypoint> corridoritems,
                 int corridorwidht,
                 std::vector<gnc_api_waypoint> polygonsfence,
                 bool polygonsinclusion,
                 circlefence circlesfence,
                 std::vector<gnc_api_waypoint> rallypoints,
                 cameracalibration cameracalc)
```
This function is called at the beginning of a program and will start of the communication links to the FCU. The function requires the program's ros nodehandle as an input. It initializes all Publisher, Subscriber and ServiceClient for real-time interaction (adapted from https://github.com/Intelligent-Quads).

**Returns**:
- - n/a.
---
