#include <ros/ros.h>
#include <autotarget_functions.hpp>
#include <nav_msgs/Odometry.h>
#include <geometry_msgs/Pose.h>

using namespace std;
float altitude=5;
int waitime=10;


int main(int argc, char** argv){
    //specify some waypoints
    std::vector<gnc_api_waypoint> waypointList1;
    std::vector<gnc_api_waypoint> waypointList2;
    gnc_api_waypoint nextWayPoint{};

    nextWayPoint.x = 50.9597030;
    nextWayPoint.y = 13.4044897;
    nextWayPoint.z = altitude;
    nextWayPoint.psi = 45;
    waypointList1.push_back(nextWayPoint);

    nextWayPoint.x = 50.9597845;
    nextWayPoint.y = 13.4046285;
    nextWayPoint.z = altitude;
    nextWayPoint.psi = 45;
    waypointList1.push_back(nextWayPoint);

    nextWayPoint.x = 50.9598107;
    nextWayPoint.y = 13.4045809;
    nextWayPoint.z = altitude;
    nextWayPoint.psi = 45;
    waypointList1.push_back(nextWayPoint);

    nextWayPoint.x = 50.9597199;
    nextWayPoint.y = 13.4044566;
    nextWayPoint.z = altitude;
    nextWayPoint.psi = 45;
    waypointList1.push_back(nextWayPoint);

    nextWayPoint.x = 50.9597323;
    nextWayPoint.y = 13.4044312;
    nextWayPoint.z = altitude;
    nextWayPoint.psi = 45;
    waypointList1.push_back(nextWayPoint);

    nextWayPoint.x = 50.9598215;
    nextWayPoint.y = 13.4045553;
    nextWayPoint.z = altitude;
    nextWayPoint.psi = 45;
    waypointList1.push_back(nextWayPoint);

    nextWayPoint.x = 50.9598392;
    nextWayPoint.y = 13.4045172;
    nextWayPoint.z = altitude;
    nextWayPoint.psi = 45;
    waypointList1.push_back(nextWayPoint);

    nextWayPoint.x = 50.9597514;
    nextWayPoint.y = 13.4043841;
    nextWayPoint.z = altitude;
    nextWayPoint.psi = 45;
    waypointList1.push_back(nextWayPoint);


    //------------------------------------------------
    nextWayPoint.x = 50.9596263;
    nextWayPoint.y = 13.4043655;
    nextWayPoint.z = altitude;
    nextWayPoint.psi = 73;
    waypointList2.push_back(nextWayPoint);

    nextWayPoint.x = 50.9596908;
    nextWayPoint.y = 13.4044812;
    nextWayPoint.z = altitude;
    nextWayPoint.psi = 73;
    waypointList2.push_back(nextWayPoint);

    nextWayPoint.x = 50.9597107;
    nextWayPoint.y = 13.4044365;
    nextWayPoint.z = altitude;
    nextWayPoint.psi = 73;
    waypointList2.push_back(nextWayPoint);

    nextWayPoint.x = 50.9596427;
    nextWayPoint.y = 13.4043331;
    nextWayPoint.z = altitude;
    nextWayPoint.psi = 73;
    waypointList2.push_back(nextWayPoint);

    nextWayPoint.x = 50.9596584;
    nextWayPoint.y = 13.4043073;
    nextWayPoint.z = altitude;
    nextWayPoint.psi = 73;
    waypointList2.push_back(nextWayPoint);

    nextWayPoint.x = 50.9597253;
    nextWayPoint.y = 13.4044121;
    nextWayPoint.z = altitude;
    nextWayPoint.psi = 73;
    waypointList2.push_back(nextWayPoint);

    nextWayPoint.x = 50.9597412;
    nextWayPoint.y = 13.4043745;
    nextWayPoint.z = altitude;
    nextWayPoint.psi = 73;
    waypointList2.push_back(nextWayPoint);

    nextWayPoint.x = 50.9596742;
    nextWayPoint.y = 13.4042749;
    nextWayPoint.z = altitude;
    nextWayPoint.psi = 73;
    waypointList2.push_back(nextWayPoint);



    ros::init(argc, argv, "node");
    ros::NodeHandle node ("~");
    string uavIDKey="worker/target_system_id";
    int uavIDValue=0;
    ros::param::get(uavIDKey, uavIDValue);
    //if(uavIDValue==1)
    //    altitude+=1.0;
    //if(uavIDValue==2)
    //    altitude+=2.0;
    ROS_INFO("ALTITUDE OF DRONE %d IS %f", uavIDValue, altitude);
    init_publisher_subscriber(node);
    ros::Rate rate(2.0);
    wait4connect();
    set_mode("GUIDED");
    //arm();
    initialize_local_frame();
    takeoff(altitude);
    stabilize_to_local_altitude(waitime, rate);
    //navigate_to_global_fix_nav_sat_waypoint(waypointList, waitime, rate);
    distance_tolerance=3;
    if(uavIDValue==0)
        navigate_to_global_raw_waypoint(waypointList1, waitime, rate);
    if(uavIDValue==1)
        navigate_to_global_raw_waypoint(waypointList1, waitime+2, rate);
    if(uavIDValue==2)
        navigate_to_global_raw_waypoint(waypointList2, waitime, rate);
    land();
    ros::shutdown();
    return 0;
}