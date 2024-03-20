#include <autotarget_functions.hpp>
//include API

using namespace std;
int main(int argc, char** argv)
{
    //initialize ros
    ros::init(argc, argv, "gnc_node");
    ros::NodeHandle gnc_node;
    string uavIDKey="worker/target_system_id";
    int uavIDValue=0;
    ros::param::get(uavIDKey, uavIDValue);

    init_publisher_subscriber(gnc_node);
    wait4connect();
    set_mode("GUIDED");
    ROS_INFO("DRONE %d mode changed to GUIDED", uavIDValue);
   // initialize_local_frame();
    arm();
    ros::shutdown();
    return 0;
}