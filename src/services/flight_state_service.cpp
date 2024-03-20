#include "ros/ros.h"
#include "autotarget/ServiceFlightState.h"

#define MODE_APM_PLANE_MANUAL "MANUAL"
#define MODE_APM_PLANE_CIRCLE "CIRCLE"
#define MODE_APM_PLANE_STABILIZE  "STABILIZE"
#define MODE_APM_PLANE_TRAINING "TRAINING"
#define MODE_APM_PLANE_ACRO "ACRO"
#define MODE_APM_PLANE_FBWA "FBWA"
#define MODE_APM_PLANE_FBWB "FBWB"
#define MODE_APM_PLANE_CRUISE "CRUISE"
#define MODE_APM_PLANE_AUTOTUNE "AUTOTUNE"
#define MODE_APM_PLANE_AUTO "AUTO"
#define MODE_APM_PLANE_RTL "RTL"
#define MODE_APM_PLANE_LOITER "LOITER"
#define MODE_APM_PLANE_LAND "LAND"
#define MODE_APM_PLANE_GUIDED "GUIDED"
#define MODE_APM_PLANE_INITIALISING "INITIALISING"
#define MODE_APM_PLANE_QSTABILIZE "QSTABILIZE"
#define MODE_APM_PLANE_QHOVER "QHOVER"
#define MODE_APM_PLANE_QLOITER "QLOITER"
#define MODE_APM_PLANE_QLAND "QLAND"
#define MODE_APM_PLANE_QRTL "QRTL"

#define MODE_APM_COPTER_STABILIZE "STABILIZE"
#define MODE_APM_COPTER_ACRO "ACRO"
#define MODE_APM_COPTER_ALT_HOLD "ALT_HOLD"
#define MODE_APM_COPTER_AUTO "AUTO"
#define MODE_APM_COPTER_GUIDED "GUIDED"
#define MODE_APM_COPTER_LOITER "LOITER"
#define MODE_APM_COPTER_RTL "RTL"
#define MODE_APM_COPTER_CIRCLE "CIRCLE"
#define MODE_APM_COPTER_POSITION "POSITION"
#define MODE_APM_COPTER_LAND "LAND"
#define MODE_APM_COPTER_OF_LOITER "OF_LOITER"
#define MODE_APM_COPTER_DRIFT "DRIFT"
#define MODE_APM_COPTER_SPORT "SPORT"
#define MODE_APM_COPTER_FLIP "FLIP"
#define MODE_APM_COPTER_AUTOTUNE "AUTOTUNE"
#define MODE_APM_COPTER_POSHOLD "POSHOLD"
#define MODE_APM_COPTER_BRAKE "BRAKE"
#define MODE_APM_COPTER_THROW "THROW"
#define MODE_APM_COPTER_AVOID_ADSB "AVOID_ADSB"
#define MODE_APM_COPTER_GUIDED_NOGPS "GUIDED_NOGPS"

#define MODE_APM_ROVER_MANUAL "MANUAL"
#define MODE_APM_ROVER_LEARNING "LEARNING"
#define MODE_APM_ROVER_STEERING "STEERING"
#define MODE_APM_ROVER_HOLD "HOLD"
#define MODE_APM_ROVER_AUTO "AUTO"
#define MODE_APM_ROVER_RTL "RTL"
#define MODE_APM_ROVER_GUIDED "GUIDED"
#define MODE_APM_ROVER_INITIALISING "INITIALISING"

#define MODE_PX4_MANUAL "MANUAL"
#define MODE_PX4_ACRO "ACRO"
#define MODE_PX4_ALTITUDE "ALTCTL"
#define MODE_PX4_POSITION "POSCTL"
#define MODE_PX4_OFFBOARD "OFFBOARD"
#define MODE_PX4_STABILIZED "STABILIZED"
#define MODE_PX4_RATTITUDE "RATTITUDE"
#define MODE_PX4_MISSION "AUTO.MISSION"
#define MODE_PX4_LOITER "AUTO.LOITER"
#define MODE_PX4_RTL "AUTO.RTL"
#define MODE_PX4_LAND "AUTO.LAND"
#define MODE_PX4_RTGS "AUTO.RTGS"
#define MODE_PX4_READY "AUTO.READY"
#define MODE_PX4_TAKEOFF "AUTO.TAKEOFF"

bool checkflightstate(autotarget::ServiceFlightState::Request &req, autotarget::ServiceFlightState::Response &res){
	if(req.connected ==false || req.armed == false || req.guided == false || req.manual_input == false){
		res.state=false;
	}else{
		res.state=true;
	}

	return true;
}

int main(int argc, char **argv)

{
	ros::init(argc,argv,"service_flight_state");
	ros::NodeHandle nh;
	ros::ServiceServer service =nh.advertiseService("service_flight_state", checkflightstate);

	ros::spin();
	return 0;
}