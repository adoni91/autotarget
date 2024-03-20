// Generated by gencpp from file autotarget/ServiceFlightState.msg
// DO NOT EDIT!


#ifndef AUTOTARGET_MESSAGE_SERVICEFLIGHTSTATE_H
#define AUTOTARGET_MESSAGE_SERVICEFLIGHTSTATE_H

#include <ros/service_traits.h>


#include <autotarget/ServiceFlightStateRequest.h>
#include <autotarget/ServiceFlightStateResponse.h>


namespace autotarget
{

struct ServiceFlightState
{

typedef ServiceFlightStateRequest Request;
typedef ServiceFlightStateResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct ServiceFlightState
} // namespace autotarget


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::autotarget::ServiceFlightState > {
  static const char* value()
  {
    return "6aae9ff3d63c0cb1e9cd74c840bff68a";
  }

  static const char* value(const ::autotarget::ServiceFlightState&) { return value(); }
};

template<>
struct DataType< ::autotarget::ServiceFlightState > {
  static const char* value()
  {
    return "autotarget/ServiceFlightState";
  }

  static const char* value(const ::autotarget::ServiceFlightState&) { return value(); }
};


// service_traits::MD5Sum< ::autotarget::ServiceFlightStateRequest> should match
// service_traits::MD5Sum< ::autotarget::ServiceFlightState >
template<>
struct MD5Sum< ::autotarget::ServiceFlightStateRequest>
{
  static const char* value()
  {
    return MD5Sum< ::autotarget::ServiceFlightState >::value();
  }
  static const char* value(const ::autotarget::ServiceFlightStateRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::autotarget::ServiceFlightStateRequest> should match
// service_traits::DataType< ::autotarget::ServiceFlightState >
template<>
struct DataType< ::autotarget::ServiceFlightStateRequest>
{
  static const char* value()
  {
    return DataType< ::autotarget::ServiceFlightState >::value();
  }
  static const char* value(const ::autotarget::ServiceFlightStateRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::autotarget::ServiceFlightStateResponse> should match
// service_traits::MD5Sum< ::autotarget::ServiceFlightState >
template<>
struct MD5Sum< ::autotarget::ServiceFlightStateResponse>
{
  static const char* value()
  {
    return MD5Sum< ::autotarget::ServiceFlightState >::value();
  }
  static const char* value(const ::autotarget::ServiceFlightStateResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::autotarget::ServiceFlightStateResponse> should match
// service_traits::DataType< ::autotarget::ServiceFlightState >
template<>
struct DataType< ::autotarget::ServiceFlightStateResponse>
{
  static const char* value()
  {
    return DataType< ::autotarget::ServiceFlightState >::value();
  }
  static const char* value(const ::autotarget::ServiceFlightStateResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // AUTOTARGET_MESSAGE_SERVICEFLIGHTSTATE_H
