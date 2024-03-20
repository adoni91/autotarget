#include "ros/ros.h"
#include "autotarget/ServiceNavSatFix.h"

#define COVARIANCE_TYPE_UNKNOWN 0
#define COVARIANCE_TYPE_APPROXIMATED 1
#define COVARIANCE_TYPE_DIAGONAL_KNOWN 2
#define COVARIANCE_TYPE_KNOWN 3

bool checknavsatfix(autotarget::ServiceNavSatFix::Request &req, autotarget::ServiceNavSatFix::Response &res){
	if(req.position_covariance_type == COVARIANCE_TYPE_UNKNOWN){
		res.state=false;
	}else{
		res.state=true;
	}

	return true;
}

int main(int argc, char **argv)

{
	ros::init(argc,argv,"service_nav_sat_fix");
	ros::NodeHandle nh;
	ros::ServiceServer service =nh.advertiseService("service_nav_sat_fix", checknavsatfix);
	ros::spin();
	return 0;
}