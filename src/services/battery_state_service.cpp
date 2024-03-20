#include "ros/ros.h"
#include "autotarget/ServiceBatteryState.h"

//Power supply status constants
#define POWER_SUPPLY_STATUS_UNKNOWN 0
#define POWER_SUPPLY_STATUS_CHARGING 1
#define POWER_SUPPLY_STATUS_DISCHARGING 2
#define POWER_SUPPLY_STATUS_NOT_CHARGING 3
#define POWER_SUPPLY_STATUS_FULL 4

//Power supply health constants
#define POWER_SUPPLY_HEALTH_UNKNOWN 0
#define POWER_SUPPLY_HEALTH_GOOD 1
#define POWER_SUPPLY_HEALTH_OVERHEAT 2
#define POWER_SUPPLY_HEALTH_DEAD 3
#define POWER_SUPPLY_HEALTH_OVERVOLTAGE 4
#define POWER_SUPPLY_HEALTH_UNSPEC_FAILURE 5
#define POWER_SUPPLY_HEALTH_COLD 6
#define POWER_SUPPLY_HEALTH_WATCHDOG_TIMER_EXPIRE 7
#define POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE 8

bool checkbatterystate(autotarget::ServiceBatteryState::Request &req, autotarget::ServiceBatteryState::Response &res){
	if(req.present ==false || req.current <=0 || req.percentage <=0.1 || req.power_supply_status == POWER_SUPPLY_STATUS_DISCHARGING || 
		req.power_supply_health == POWER_SUPPLY_HEALTH_OVERHEAT || req.power_supply_health == POWER_SUPPLY_HEALTH_COLD ||  req.power_supply_health == POWER_SUPPLY_HEALTH_OVERVOLTAGE){
		res.state=false;
	}else{
		res.state=true;
	}

	return true;
}

int main(int argc, char **argv)

{
	ros::init(argc,argv,"service_battery_state");
	ros::NodeHandle nh;
	ros::ServiceServer service =nh.advertiseService("battery_state_service", checkbatterystate);

	ros::spin();
	return 0;
}