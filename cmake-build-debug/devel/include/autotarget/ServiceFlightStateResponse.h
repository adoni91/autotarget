// Generated by gencpp from file autotarget/ServiceFlightStateResponse.msg
// DO NOT EDIT!


#ifndef AUTOTARGET_MESSAGE_SERVICEFLIGHTSTATERESPONSE_H
#define AUTOTARGET_MESSAGE_SERVICEFLIGHTSTATERESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace autotarget
{
template <class ContainerAllocator>
struct ServiceFlightStateResponse_
{
  typedef ServiceFlightStateResponse_<ContainerAllocator> Type;

  ServiceFlightStateResponse_()
    : state(false)  {
    }
  ServiceFlightStateResponse_(const ContainerAllocator& _alloc)
    : state(false)  {
  (void)_alloc;
    }



   typedef uint8_t _state_type;
  _state_type state;





  typedef boost::shared_ptr< ::autotarget::ServiceFlightStateResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::autotarget::ServiceFlightStateResponse_<ContainerAllocator> const> ConstPtr;

}; // struct ServiceFlightStateResponse_

typedef ::autotarget::ServiceFlightStateResponse_<std::allocator<void> > ServiceFlightStateResponse;

typedef boost::shared_ptr< ::autotarget::ServiceFlightStateResponse > ServiceFlightStateResponsePtr;
typedef boost::shared_ptr< ::autotarget::ServiceFlightStateResponse const> ServiceFlightStateResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::autotarget::ServiceFlightStateResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::autotarget::ServiceFlightStateResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::autotarget::ServiceFlightStateResponse_<ContainerAllocator1> & lhs, const ::autotarget::ServiceFlightStateResponse_<ContainerAllocator2> & rhs)
{
  return lhs.state == rhs.state;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::autotarget::ServiceFlightStateResponse_<ContainerAllocator1> & lhs, const ::autotarget::ServiceFlightStateResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace autotarget

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::autotarget::ServiceFlightStateResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::autotarget::ServiceFlightStateResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::autotarget::ServiceFlightStateResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::autotarget::ServiceFlightStateResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::autotarget::ServiceFlightStateResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::autotarget::ServiceFlightStateResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::autotarget::ServiceFlightStateResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "001fde3cab9e313a150416ff09c08ee4";
  }

  static const char* value(const ::autotarget::ServiceFlightStateResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x001fde3cab9e313aULL;
  static const uint64_t static_value2 = 0x150416ff09c08ee4ULL;
};

template<class ContainerAllocator>
struct DataType< ::autotarget::ServiceFlightStateResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "autotarget/ServiceFlightStateResponse";
  }

  static const char* value(const ::autotarget::ServiceFlightStateResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::autotarget::ServiceFlightStateResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool state\n"
;
  }

  static const char* value(const ::autotarget::ServiceFlightStateResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::autotarget::ServiceFlightStateResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.state);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ServiceFlightStateResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::autotarget::ServiceFlightStateResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::autotarget::ServiceFlightStateResponse_<ContainerAllocator>& v)
  {
    s << indent << "state: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.state);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AUTOTARGET_MESSAGE_SERVICEFLIGHTSTATERESPONSE_H
