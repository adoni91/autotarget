#include <autotarget_functions.hpp>
//include API
using namespace std;
float altitude=5;
int waitime=20;
int main(int argc, char** argv)
{
    //Specify waypoints
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

    //initialize ros
    ros::init(argc, argv, "gnc_node");
    ros::NodeHandle gnc_node("~");
    string uavIDKey="worker/target_system_id";
    int uavIDValue=0;
    ros::param::get(uavIDKey, uavIDValue);
    /*if(uavIDValue==1)
        altitude+=2.0;
    if(uavIDValue==2)
        altitude+=4.0;*/
    ROS_INFO("ALTITUDE OF DRONE %d IS %f", uavIDValue, altitude);
    init_publisher_subscriber(gnc_node);
    ros::Rate rate(2.0);
    wait4connect();
    //wait4start();
    set_mode("GUIDED");
    arm();
   // takeoff_global(50.9597030, 13.4044897, altitude);
    if(uavIDValue==0)
        takeoff_global(50.9597030, 13.4044897, altitude);
    if(uavIDValue==1)
        takeoff_global(50.9597030, 13.4044887, altitude);
    if(uavIDValue==2)
        takeoff_global(50.9597031, 13.4044899, altitude);
    wait(waitime);
    //initialize_local_frame();
    //takeoff(altitude);
    //stabilize_to_local_altitude(waitime, rate);
   for(int i=0; i<waypointList1.size(); i++){
       //set_yaw(waypointList[i].psi, 20, -1, 1);
       //wait(10);
       if(uavIDValue==0)
           set_destination_lla_raw(waypointList1[i].x,waypointList1[i].y, waypointList1[i].z, waypointList1[i].psi);
       if(uavIDValue==1)
           set_destination_lla_raw(waypointList1[i].x,waypointList1[i].y, waypointList1[i].z, waypointList1[i].psi);
       if(uavIDValue==2)
           set_destination_lla_raw(waypointList2[i].x,waypointList2[i].y, waypointList2[i].z, waypointList2[i].psi);
       ROS_INFO("MOVE TO POSITION %d ", i+1);
       wait(waitime);
   }
   land();
   wait(5);
   ros::shutdown();
} 