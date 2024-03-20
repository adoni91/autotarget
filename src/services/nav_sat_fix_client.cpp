#include "ros/ros.h"
#include "autotarget/ServiceNavSatFix.h"
#include <sensor_msgs/NavSatFix.h>

using namespace std;


int sysId;

void callNavSatFixMsg(const sensor_msgs::NavSatFix &position_data){
    autotarget::ServiceNavSatFix srv;
	srv.request.latitude=position_data.latitude;
	srv.request.longitude=position_data.longitude;
	srv.request.altitude=position_data.altitude;
	srv.request.position_covariance=position_data.position_covariance;
	srv.request.position_covariance_type=position_data.position_covariance_type;

	ros::NodeHandle n;
	ros::ServiceClient client = n.serviceClient<autotarget::ServiceNavSatFix>("service_nav_sat_fix");
	ROS_INFO("Latitude : %f", position_data.latitude);
	ROS_INFO("Longitude : %f", position_data.longitude);
	ROS_INFO("Altitude : %f", position_data.altitude);
	ROS_INFO("Position covariance type : %i", position_data.position_covariance_type);

	
	if(client.call(srv)){
		ROS_INFO("THE NAVIGATION SAT FIX POSITION OF DRONE %i IS : %d", sysId, srv.response.state);
	}else{
		ROS_WARN("FAILED TO CALL THE NAVIGATION SATELLITE FIX SERVICE");
	}
	ROS_INFO("*****************************************************************************************************\n\n");
}

int main(int argc, char **argv)

{
	ros::init(argc,argv,"client_nav_sat_fix");
	ros::NodeHandle nh("client_nav_sat_fix");
	ros::Rate rate(1); //1000 Hz
	nh.getParam("target_system_id", sysId);
	//ros::Subscriber topic_battery=nh.subscribe("/drone"+std::to_string(sysId)+"/mavros/battery", 10, callBatteryMsg);
	ros::Subscriber topic_navigationsat=nh.subscribe("/mavros/global_position/global", 10, callNavSatFixMsg);
	while(ros::ok()){
		ros::spinOnce();
		rate.sleep();
	}

	return 0;
}