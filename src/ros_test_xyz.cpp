#include <ros/ros.h>
#include <autotarget_functions.hpp>
#include <nav_msgs/Odometry.h>
#include <geometry_msgs/Pose.h>


int altitude=5;
int waitime=3;


int main(int argc, char** argv){
    //specify some waypoints
    std::vector<gnc_api_waypoint> waypointList;
    gnc_api_waypoint nextWayPoint{};
    nextWayPoint.x = 2;
    nextWayPoint.y = 0;
    nextWayPoint.z = altitude;
    nextWayPoint.psi = 0;
    nextWayPoint.x = 0;
    nextWayPoint.y = 0;
    nextWayPoint.z = altitude;
    nextWayPoint.psi = 0;
    waypointList.push_back(nextWayPoint);
    nextWayPoint.x = 3;
    nextWayPoint.y = 0;
    nextWayPoint.z = altitude;
    nextWayPoint.psi = 90;
    waypointList.push_back(nextWayPoint);
    nextWayPoint.x = 4;
    nextWayPoint.y = 2;
    nextWayPoint.z = altitude;
    nextWayPoint.psi = 180;
    waypointList.push_back(nextWayPoint);
    nextWayPoint.x = 1;
    nextWayPoint.y = 3;
    nextWayPoint.z = altitude;
    nextWayPoint.psi = 270;
    waypointList.push_back(nextWayPoint);
    nextWayPoint.x = 0;
    nextWayPoint.y = 0;
    nextWayPoint.z = altitude;
    nextWayPoint.psi = 0;
    waypointList.push_back(nextWayPoint);

	ros::init(argc, argv, "node");
	ros::NodeHandle node ("~");
    //ros::Subscriber checkAltitude = node.subscribe<nav_msgs::Odometry>( "/mavros/global_position/local", 1, check_current_altitude_cb);
    init_publisher_subscriber(node);
    wait4connect();
    set_mode("GUIDED");
    initialize_local_frame();
    takeoff(altitude);
    ros::Rate rate(2.0);
    stabilize_to_local_altitude(waitime, rate);
    navigate_to_local_waypoints(waypointList, waitime, rate);
    land();

    /*while (ros::ok()){
            if (reach_alt==false){
                ros::spinOnce();
                rate.sleep();
            }
            if(reach_alt==true){
                wait(waitime);
                ROS_INFO("START NAVIGATING ... ");
                checkAltitude.shutdown();
                break;
            }
    }

    ros::Subscriber checkPosition = node.subscribe<nav_msgs::Odometry>( "/mavros/global_position/local", 1, check_current_position_cb);
    int counter=0;
    while (ros::ok()){
        if(counter < waypointList.size()) {
            set_destination(waypointList[counter].x, waypointList[counter].y, waypointList[counter].z, waypointList[counter].psi);
            if (reach_waypoint == false) {
                ros::spinOnce();
                rate.sleep();
            }
            if (reach_waypoint == true) {
                wait(waitime);
                ROS_INFO("MOVE TO NEXT WAYPOINT");
                counter++;
                reach_waypoint=false;
            }
        }else{
            wait(waitime);
            ROS_INFO("LANDING STARTED");
            land();
            checkPosition.shutdown();
            break;
        }
    }
*/
    ros::shutdown();

    return 0;
}