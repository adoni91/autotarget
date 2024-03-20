#include <autotarget_functions.hpp>
//include API

#include <sensor_msgs/NavSatFix.h>



void cb_f(const sensor_msgs::NavSatFix::ConstPtr& msg){ //
    ROS_INFO("CURRENT GPS POS : lat: %f, lon: %f, alt: %f", msg->latitude, msg->longitude, msg->altitude);

}
int main(int argc, char** argv)
{
    //initialize ros 
    ros::init(argc, argv, "gnc_node");
    ros::NodeHandle gnc_node("~");
    //ros::Subscriber check_position  = gnc_node.subscribe<sensor_msgs::NavSatFix>(( "/mavros/global_position/global"), 1, cb_f);//

    init_publisher_subscriber(gnc_node);
    ros::Rate rate(2.0);
    wait4connect();
    set_mode("GUIDED");
    arm();
    takeoff_global(-35.36325881, 149.16523533, 5);
    sleep(3);


    //specify some waypoints 
	std::vector<gnc_api_waypoint> waypointList;
	gnc_api_waypoint nextWayPoint{};
	nextWayPoint.x = -35.36323231;
	nextWayPoint.y = 149.16523488;
	nextWayPoint.z = 5;
	nextWayPoint.psi = 355;
	waypointList.push_back(nextWayPoint);

	nextWayPoint.x = -35.36326234;
	nextWayPoint.y = 149.16523791;
	nextWayPoint.z = 5;
	nextWayPoint.psi = 45;
	waypointList.push_back(nextWayPoint);

	nextWayPoint.x = -35.36308682;
	nextWayPoint.y = 149.16518918;
	nextWayPoint.z = 5;
	nextWayPoint.psi = 260;
	waypointList.push_back(nextWayPoint);

	nextWayPoint.x = -35.36297228;
	nextWayPoint.y = 149.16517498;
	nextWayPoint.z = 5;
	nextWayPoint.psi = 45;
	waypointList.push_back(nextWayPoint);

	int counter = 0;
	while(ros::ok())
	{

        //if(check_waypoint_reached(.1) == 1)
		//{
			if (counter < waypointList.size())
			{
				ROS_INFO("MOVE TO POINT %i", counter);
				//set_yaw(waypointList[counter].psi, 45, 1, 0);
				set_destination_lla_raw(waypointList[counter].x,waypointList[counter].y,waypointList[counter].z, waypointList[counter].psi);
                ros::spinOnce();
                sleep(3);
				counter++;	
			}else{
				ROS_INFO("LAND");
				land();
				//set_mode("RTL");
				gnc_node.shutdown();
                break;
			}
			//ros::spinOnce();
			//rate.sleep();
		//}	
		
	}

    return 0;


} 
