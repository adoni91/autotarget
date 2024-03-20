#include "ros/ros.h"
#include "autotarget/ServiceRelativeAltitude.h"

bool checkrelativealtitude(autotarget::ServiceRelativeAltitude::Request &req, autotarget::ServiceRelativeAltitude::Response &res){
	if(req.data <= 1 || req.data == 0){
		res.state=false;
	}else{
		res.state=true;
	}
	return true;
}

int main(int argc, char **argv)

{
	ros::init(argc,argv,"relative_altitude_service");
	ros::NodeHandle nh;
	ros::ServiceServer service =nh.advertiseService("relative_altitude_service", checkrelativealtitude);

	ros::spin();

	return 0;
}