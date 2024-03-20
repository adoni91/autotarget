#include <autotarget_functions.hpp>
//include API

using namespace std;
int main(int argc, char** argv)
{
    //initialize ros
    ros::init(argc, argv, "sender_node");
    ros::NodeHandle gnc_node;
    string uavIDKey="worker/target_system_id";
    int uavIDValue=0;
    ros::param::get(uavIDKey, uavIDValue);

    init_publisher_subscriber(gnc_node);
    publishMessage(gnc_node, "hello", "Hello");
    return 0;
}