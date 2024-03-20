//#include <gnc_functions.hpp>
#include "autotarget_functions.hpp"
//include API 

int main(int argc, char** argv)
{
	//initialize ros 
	ros::init(argc, argv, "gnc_node");
	ros::NodeHandle gnc_node("~");
	
	//initialize control publisher/subscribers
	init_publisher_subscriber(gnc_node);

  	// wait for FCU connection
	wait4connect();

	//wait for used to switch to mode GUIDED
	//wait4start();
	set_mode("GUIDED");

	//create local reference frame 
	initialize_local_frame();
	ros::Rate rate(2.0);

	//request takeoff
	takeoff(5);
	ROS_INFO("STABILIZE ALTITUDE");
	//wait4command(6);
    int waitine=10;
	ROS_INFO("GLOBAL YAW STARTED");
	set_yaw(0, 45, -1, 0);
	wait(waitine);
	set_yaw(90, 0, 1, 0);
    wait(waitine);
	set_yaw(180, 0, 1, 0);
    wait(waitine);
	set_yaw(260, 0, 1, 0);
    wait(waitine);
	set_yaw(320, 0, -1, 1);
    wait(waitine);

	//ros::Duration(10.0).sleep();
	/*ROS_INFO("GLOBAL YAW");
	sleep(5);
	set_yaw(0, 45, 1, 0);
	sleep(5);
	set_yaw(180, 45, 1, 0);
	sleep(5);
	set_yaw(260, 45, 1, 0);*/
	land();	


	return 0;
}