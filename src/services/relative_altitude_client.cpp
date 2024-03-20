#include "ros/ros.h"
#include "autotarget/ServiceRelativeAltitude.h"
#include <std_msgs/Float64.h>

using namespace std;


int sysId;

void callRelativeAltitudeMsg(const std_msgs::Float64 &altitude_data){
    autotarget::ServiceRelativeAltitude srv;
	srv.request.data=altitude_data.data;

	ros::NodeHandle n;
	ros::ServiceClient client = n.serviceClient<autotarget::ServiceRelativeAltitude>("relative_altitude_service");
	ROS_INFO("Relative Altitude: %f", altitude_data.data);
	
	if(client.call(srv)){
		ROS_INFO("THE RELATIVE ALTITUDE OF DRONE %i IS : %d", sysId, srv.response.state);
	}else{
		ROS_WARN("FAILED TO CALL THE RELATIVE ALTITUDE SERVICE");
	}
	ROS_INFO("*****************************************************************************************************\n\n");
}

int main(int argc, char **argv)

{
	ros::init(argc,argv,"client_relative_altitude");
	ros::NodeHandle nh("client_relative_altitude");
	ros::Rate rate(1); //1000 Hz
	nh.getParam("target_system_id", sysId);
	//ros::Subscriber topic_battery=nh.subscribe("/drone"+std::to_string(sysId)+"/mavros/battery", 10, callBatteryMsg);
	ros::Subscriber topic_altitude=nh.subscribe("/mavros/global_position/rel_alt", 10, callRelativeAltitudeMsg);
	while(ros::ok()){
		ros::spinOnce();
		rate.sleep();
	}

	return 0;
}