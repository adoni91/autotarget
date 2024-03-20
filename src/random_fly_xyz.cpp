#include <autotarget_functions.hpp>
//include API 

int main(int argc, char** argv)
{
	//initialize ros 
	ros::init(argc, argv, "gnc_node");
	ros::NodeHandle gnc_node("~");
	
	//initialize control publisher/subscribers
	init_publisher_subscriber(gnc_node);
	wait4connect();
	set_mode("GUIDED");
	initialize_local_frame();
    //in HZ (10HZ=100ms)
	ros::Rate rate(1);

    takeoff(5);
    ros::spinOnce();
    rate.sleep();

    set_destination(5, 0, 5, -90);
    ros::spinOnce();
    rate.sleep();

    set_destination(5, 5, 5, 0);
    ros::spinOnce();
    rate.sleep();


    /*
    set_destination(0, 0, 5, 0);
    ros::spinOnce();
    rate.sleep();

    set_destination(5, 0, 5, -90);
    ros::spinOnce();
    rate.sleep();

    set_destination(5, 5, 5, 0);
    ros::spinOnce();
    rate.sleep();

    set_destination(0, 5, 5, 90);
    ros::spinOnce();
    rate.sleep();

	set_destination(0, 0, 5, 180);
	ros::spinOnce();
    rate.sleep();

    set_destination(0, 0, 5, 0);
    ros::spinOnce();
    rate.sleep();

     */
	land();
    ros::shutdown();


	return 0;
}






/*
#include <gnc_functions.hpp>
int main(int argc, char** argv)
{
	
	int altitude=3;
	int speed=5;
	//initialize ros 
	ros::init(argc, argv, "gnc_node");
	ros::NodeHandle gnc_node("~");
	
	//initialize control publisher/subscribers
	init_publisher_subscriber(gnc_node);

  	// wait for FCU connection
	wait4connect();

	//wait for used to switch to mode GUIDED
	set_mode("GUIDED");

	//create local reference frame 
	initialize_local_frame();
	set_speed(speed);
	//request takeoff
	takeoff(altitude);

	//specify some waypoints 
	std::vector<gnc_api_waypoint> waypointList;
	gnc_api_waypoint nextWayPoint;
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

	waypointList.push_back(nextWayPoint);
	//specify control loop rate. We recommend a low frequency to not over load the FCU with messages. Too many messages will cause the drone to be sluggish
	ros::Rate rate(2.0);
	//ros::Duration(5.0).sleep();
	int counter = 0;
	while(ros::ok())
	{
		ros::spinOnce();
		rate.sleep();
		if(check_waypoint_reached(.2) == 1)
		{
			if (counter < waypointList.size())
			{
				ROS_INFO("MOVE TO POINT %i", counter);
				set_destination(waypointList[counter].x,waypointList[counter].y,waypointList[counter].z, waypointList[counter].psi);
				set_yaw(waypointList[counter].psi, 45, -1, 1);
				ROS_INFO("POINT %i REACHED", counter);
				//ros::Duration(5.0).sleep();
				//ROS_INFO("************************************  WAIT FOR 5 sec ************************************");
				counter++;	
			}else{
				//land after all waypoints are reached
				land();
			}	
		}	
		
	}
	
	return 0;
}*/