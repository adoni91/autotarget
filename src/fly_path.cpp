
#include <autotarget_functions.hpp>
#include <world_quadrilateral.h>

#include <chrono>
#include <ctime>

using namespace std;
//include API 

int main(int argc, char** argv) {
    //1-INITIALIZE ROS PARAMETERS
    ros::init(argc, argv, "ros_node");
    ros::NodeHandle gnc_node("~");
    string uavIDKey = "LMAT/target_system_id";
    string uavAltitudeKey = "LMAT/altitude_meter";
    string uavPerceptionLenghtKey = "LMAT/perception_lenght";
    string uavWaitTimeKey = "LMAT/wait_time";

    int uavIDValue = 0;
    float uavAltitudeValue = 5;
    int uavPerceptionLenghtValue = 2;
    int uavWaitTimeValue = 0;
    ros::param::get(uavIDKey, uavIDValue);
    ros::param::get(uavAltitudeKey, uavAltitudeValue);
    ros::param::get(uavPerceptionLenghtKey, uavPerceptionLenghtValue);
    ros::param::get(uavWaitTimeKey, uavWaitTimeValue);
    //2-DEFINE THE QUADRILATERAL AREA
    vector<Point> points;
    vector<Edge> edges;
    points.push_back(Point(0, 0, 0));
    points.push_back(Point(5, 0, 0));
    points.push_back(Point(5, 5, 0));
    points.push_back(Point(0, 5, 0));

    //3-SPLIT THE AREA UNDER SUB-REGIONS
    int nx = 2, ny = 1;
    WorldQuadrilateral global_area = WorldQuadrilateral(points);
    //vector< vector<Point> > local_area=global_area.splitQuadrilateral(nx,ny);

    //4-TAKE SUB-REGION BASED ON THE uavID & COMPUTE PATH
    vector<Point> waypoints;
    /*if(uavIDValue==0){
        ROS_ERROR("THIS DRONE HAS NOT ID KEY");
        waypoints={};
    }
    else{
        ROS_INFO("THIS DRONE ID IS %d", uavIDValue);
        WorldQuadrilateral local_quadrilateral = WorldQuadrilateral(local_area[uavIDValue-1]);
        waypoints = local_quadrilateral.LMATNorthSouth(1);
    }*/
    waypoints = global_area.LMATWestEast(uavPerceptionLenghtValue);

    //5-PREPARE THE UAV FOR FLIGHT NAVIGATION
    //Initialize the PUBLISHER/SUBSCRIBERS
    init_publisher_subscriber(gnc_node);
    //Wait for the FCU connection
    wait4connect();
    //Set mode to GUIDED
    set_mode("GUIDED");
    //Create local frame reference
    initialize_local_frame();
    //specify control loop rate. We recommend a low frequency to not over load the FCU with messages. Too many messages will cause the drone to be sluggish
    ros::Rate rate(0.05);
    float speed = 1;
    float altitude = uavAltitudeValue;
    //set_speed(speed);
    //count start chrono
    auto start = chrono::system_clock::now();
    chrono::duration<double> elapsed_seconds;
    //request takeoff
    takeoff(altitude);
    sleep(5);
    //wait4command(5);

    //specify some waypoints
    std::vector<gnc_api_waypoint> waypointList;
    gnc_api_waypoint nextWayPoint;
    nextWayPoint.x=points[0].getX();
    nextWayPoint.y=points[0].getY();
    nextWayPoint.z=points[0].getZ();
    nextWayPoint.psi=global_area.getorientation(Point(0,0,0), points[0]);
    waypointList.push_back(nextWayPoint);
    for (int i = 0; i < waypoints.size(); i++) {
        nextWayPoint.x = waypoints[i].getX();
        nextWayPoint.y = waypoints[i].getY();
        nextWayPoint.z = altitude;
        nextWayPoint.psi = 0;//global_area.getorientation(waypoints[i-1], waypoints[i]);
        waypointList.push_back(nextWayPoint);
    }

    int counter = 0;
    int turning = 0;

    while (ros::ok()) {
        ros::spinOnce();
        rate.sleep();
        if (check_waypoint_reached(.3) ==1) {
                set_destination(waypointList[counter].x, waypointList[counter].y, waypointList[counter].z, waypointList[counter].psi);
                turning++;
                counter++;
                ROS_INFO("LMAT CPP MISSION ......... %d / %ld", counter, waypointList.size());
                //count end chrono
                auto end = chrono::system_clock::now();
                elapsed_seconds = end - start;
                ROS_INFO("FLIGHT TIME OF DRONE %d IS %f", uavIDValue, elapsed_seconds.count() / 60);
               // wait4command(uavWaitTimeValue);
                sleep(5);
        } else {
            //land after all waypoints are reached
            ROS_INFO("TURNING OF DRONE %d %d", uavIDValue, turning);
            land();
            ros::shutdown();
            break;
        }
   }
    return 0;
}