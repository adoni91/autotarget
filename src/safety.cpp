#include <autotarget_functions.hpp>
//include API

using namespace std;
int main(int argc, char** argv)
{
    //initialize ros
    ros::init(argc, argv, "gnc_node");
    ros::NodeHandle gnc_node("~");

    init_publisher_subscriber(gnc_node);
    wait4connect();
    land();
    if (ros::isStarted())
        ros::shutdown();
    return 0;
}