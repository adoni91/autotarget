
#include <autotarget_functions.hpp>
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
	set_mode("GUIDED");

	//create local reference frame 
	initialize_local_frame();
	ros::Rate rate(2.0);
	set_speed(1);
	//request takeoff
	takeoff(5);
	wait4command(5);

	//specify some waypoints 
	std::vector<gnc_api_waypoint> waypointList;
	gnc_api_waypoint nextWayPoint;
	nextWayPoint.x = 5;
	nextWayPoint.y = 0;
	nextWayPoint.z = 5;
	nextWayPoint.psi = -90;
	waypointList.push_back(nextWayPoint);
	nextWayPoint.x = 5;
	nextWayPoint.y = 5;
	nextWayPoint.z = 5;
	nextWayPoint.psi = 0;
	waypointList.push_back(nextWayPoint);
	nextWayPoint.x = 0;
	nextWayPoint.y = 5;
	nextWayPoint.z = 5;
	nextWayPoint.psi = 90;
	waypointList.push_back(nextWayPoint);
	nextWayPoint.x = 0;
	nextWayPoint.y = 0;
	nextWayPoint.z = 5;
	nextWayPoint.psi = 180;
	waypointList.push_back(nextWayPoint);
	nextWayPoint.x = 0;
	nextWayPoint.y = 0;
	nextWayPoint.z = 5;
	nextWayPoint.psi = 0;
	waypointList.push_back(nextWayPoint);

	for(int i=0; i<waypointList.size();i++){
		set_destination(waypointList[i].x,waypointList[i].y,waypointList[i].z, waypointList[i].psi);
		wait4command(10);
	}
	land();
	ros::shutdown();
	
	return 0;
}