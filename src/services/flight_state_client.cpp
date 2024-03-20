#include "ros/ros.h"
#include "autotarget/ServiceFlightState.h"
#include <mavros_msgs/State.h>

using namespace std;


int sysId;

void callFlightStateMsg(const mavros_msgs::State &flight_state_data){
	autotarget::ServiceFlightState srv;

	srv.request.connected=flight_state_data.connected;
	srv.request.armed=flight_state_data.armed;
	srv.request.guided=flight_state_data.guided;
	srv.request.manual_input=flight_state_data.manual_input;
	srv.request.mode=flight_state_data.mode;
	srv.request.system_status=flight_state_data.system_status;


	ros::NodeHandle n;
	ros::ServiceClient client = n.serviceClient<autotarget::ServiceFlightState>("service_flight_state");
	ROS_INFO("Connected FCU : %d", flight_state_data.connected);
	ROS_INFO("Armed Rotors : %d", flight_state_data.armed);
	ROS_INFO("Guided Mode : %d", flight_state_data.guided);
	ROS_INFO("Manuel Input : %d", flight_state_data.manual_input);
	ROS_INFO("Flight Mode : %s", flight_state_data.mode.c_str());
	ROS_INFO("System Status : %i", flight_state_data.system_status);
	
	if(client.call(srv)){
		ROS_INFO("THE FLIGHT STATE OF DRONE %i IS : %d", sysId, srv.response.state);
	}else{
		ROS_WARN("FAILED TO CALL THE FLIGHT STATE SERVICE");
	}
	ROS_INFO("*****************************************************************************************************\n\n");
}

int main(int argc, char **argv)

{
	ros::init(argc,argv,"client_flight_state");
	ros::NodeHandle nh("client_flight_state");
	ros::Rate rate(1); //1000 Hz
	nh.getParam("target_system_id", sysId);
	//ros::Subscriber topic_battery=nh.subscribe("/drone"+std::to_string(sysId)+"/mavros/battery", 10, callBatteryMsg);
	ros::Subscriber topic_flight_state=nh.subscribe("/mavros/state", 10, callFlightStateMsg);
	while(ros::ok()){
		ros::spinOnce();
		rate.sleep();
	}

	return 0;
}