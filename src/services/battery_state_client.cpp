#include "ros/ros.h"
#include "autotarget/ServiceBatteryState.h"
#include <sensor_msgs/BatteryState.h>

using namespace std;


int sysId;

void callBatteryMsg(const sensor_msgs::BatteryState &battery_data){
    autotarget::ServiceBatteryState srv;
	srv.request.voltage=battery_data.voltage;
	srv.request.current=battery_data.current;
	srv.request.charge=battery_data.charge;
	srv.request.percentage=battery_data.percentage;
	srv.request.power_supply_status=battery_data.power_supply_status;
	srv.request.power_supply_health=battery_data.power_supply_health;
	srv.request.present=battery_data.present;

	ros::NodeHandle n;
	ros::ServiceClient client = n.serviceClient<autotarget::ServiceBatteryState>("battery_state_service");
	ROS_INFO("Voltage in Volts : %f", battery_data.voltage);
	ROS_INFO("Negative when discharging (A) : %f", battery_data.current);
	ROS_INFO("Current charge in Ah : %f",battery_data.capacity);
	ROS_INFO("Capacity in Ah (design capacity) : %f", battery_data.design_capacity);
	ROS_INFO("Charge percentage on 0 to 1 range : %f", battery_data.percentage);
	ROS_INFO("The charging status as reported : %i", battery_data.power_supply_status);
	ROS_INFO("The battery health metric : %i", battery_data.power_supply_health);
	ROS_INFO("The battery chemistry : %i", battery_data.power_supply_technology);
	ROS_INFO("True if the battery is present : %d", battery_data.present);
	
	if(client.call(srv)){
		ROS_INFO("THE BATTERY HEALTH OF DRONE %i IS : %d", sysId, srv.response.state);
	}else{
		ROS_WARN("FAILED TO CALL THE BATTERY HEALTH SERVICE");
	}
	ROS_INFO("*****************************************************************************************************\n\n");
}

int main(int argc, char **argv)

{
	ros::init(argc,argv,"client_battery_state");
	ros::NodeHandle nh("client_battery_state");
	ros::Rate rate(1); //1000 Hz
	nh.getParam("target_system_id", sysId);
	//ros::Subscriber topic_battery=nh.subscribe("/drone"+std::to_string(sysId)+"/mavros/battery", 10, callBatteryMsg);
	ros::Subscriber topic_battery=nh.subscribe("/mavros/battery", 10, callBatteryMsg);
	while(ros::ok()){
		ros::spinOnce();
		rate.sleep();
	}

	return 0;
}