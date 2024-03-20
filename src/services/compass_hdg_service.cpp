#include "ros/ros.h"
#include "autotarget/erviceCompassHDG.h"


bool checkcompasshdg(autotarget::ServiceCompassHDG::Request &req, autotarget::ServiceCompassHDG::Response &res){
	if(req.data <= 0){
		res.state=false;
	}else{
		res.state=true;
	}
	return true;
}

int main(int argc, char **argv)

{
	ros::init(argc,argv,"compass_hdg_service");
	ros::NodeHandle nh;
	ros::ServiceServer service =nh.advertiseService("compass_hdg_service", checkcompasshdg);

	ros::spin();

	return 0;
}