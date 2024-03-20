#include "ros/ros.h"
#include "autotarget/ServiceCompassHDG.h"
#include <std_msgs/Float64.h>

using namespace std;


int sysId;

void callCompassHDGMsg(const std_msgs::Float64 &compass_data){
	iq_gnc::ServiceCompassHDG srv;
	srv.request.data=compass_data.data;

	ros::NodeHandle n;
	ros::ServiceClient client = n.serviceClient<iq_gnc::ServiceCompassHDG>("compass_hdg_service");
	ROS_INFO("Compass : %f", compass_data.data);
	
	if(client.call(srv)){
		ROS_INFO("THE COMPASS OF DRONE %i IS : %d", sysId, srv.response.state);
	}else{
		ROS_WARN("FAILED TO CALL THE COMPASS SERVICE");
	}
	ROS_INFO("*****************************************************************************************************\n\n");
}

int main(int argc, char **argv)

{
	ros::init(argc,argv,"client_compass_hdg");
	ros::NodeHandle nh("client_compass_hdg");
	ros::Rate rate(1); //1000 Hz
	nh.getParam("target_system_id", sysId);
	//ros::Subscriber topic_battery=nh.subscribe("/drone"+std::to_string(sysId)+"/mavros/battery", 10, callBatteryMsg);
	ros::Subscriber topic_altitude=nh.subscribe("/mavros/global_position/compass_hdg", 10, callCompassHDGMsg);
	while(ros::ok()){
		ros::spinOnce();
		rate.sleep();
	}

	return 0;
}