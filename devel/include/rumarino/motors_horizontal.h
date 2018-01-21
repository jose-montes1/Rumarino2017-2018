// Generated by gencpp from file rumarino/motors_horizontal.msg
// DO NOT EDIT!


#ifndef RUMARINO_MESSAGE_MOTORS_HORIZONTAL_H
#define RUMARINO_MESSAGE_MOTORS_HORIZONTAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace rumarino
{
template <class ContainerAllocator>
struct motors_horizontal_
{
  typedef motors_horizontal_<ContainerAllocator> Type;

  motors_horizontal_()
    : front_left_motor(0)
    , front_right_motor(0)
    , back_left_motor(0)
    , back_right_motor(0)  {
    }
  motors_horizontal_(const ContainerAllocator& _alloc)
    : front_left_motor(0)
    , front_right_motor(0)
    , back_left_motor(0)
    , back_right_motor(0)  {
  (void)_alloc;
    }



   typedef int32_t _front_left_motor_type;
  _front_left_motor_type front_left_motor;

   typedef int32_t _front_right_motor_type;
  _front_right_motor_type front_right_motor;

   typedef int32_t _back_left_motor_type;
  _back_left_motor_type back_left_motor;

   typedef int32_t _back_right_motor_type;
  _back_right_motor_type back_right_motor;




  typedef boost::shared_ptr< ::rumarino::motors_horizontal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rumarino::motors_horizontal_<ContainerAllocator> const> ConstPtr;

}; // struct motors_horizontal_

typedef ::rumarino::motors_horizontal_<std::allocator<void> > motors_horizontal;

typedef boost::shared_ptr< ::rumarino::motors_horizontal > motors_horizontalPtr;
typedef boost::shared_ptr< ::rumarino::motors_horizontal const> motors_horizontalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rumarino::motors_horizontal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rumarino::motors_horizontal_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace rumarino

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'rumarino': ['/home/jose/catkin_ws/src/rumarino/msg'], 'std_msgs': ['/opt/ros/lunar/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::rumarino::motors_horizontal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rumarino::motors_horizontal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rumarino::motors_horizontal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rumarino::motors_horizontal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rumarino::motors_horizontal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rumarino::motors_horizontal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rumarino::motors_horizontal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6f978d6a3c4e6fe02042594d0fb08035";
  }

  static const char* value(const ::rumarino::motors_horizontal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6f978d6a3c4e6fe0ULL;
  static const uint64_t static_value2 = 0x2042594d0fb08035ULL;
};

template<class ContainerAllocator>
struct DataType< ::rumarino::motors_horizontal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rumarino/motors_horizontal";
  }

  static const char* value(const ::rumarino::motors_horizontal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rumarino::motors_horizontal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 front_left_motor\n\
int32 front_right_motor\n\
int32 back_left_motor\n\
int32 back_right_motor\n\
";
  }

  static const char* value(const ::rumarino::motors_horizontal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rumarino::motors_horizontal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.front_left_motor);
      stream.next(m.front_right_motor);
      stream.next(m.back_left_motor);
      stream.next(m.back_right_motor);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct motors_horizontal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rumarino::motors_horizontal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rumarino::motors_horizontal_<ContainerAllocator>& v)
  {
    s << indent << "front_left_motor: ";
    Printer<int32_t>::stream(s, indent + "  ", v.front_left_motor);
    s << indent << "front_right_motor: ";
    Printer<int32_t>::stream(s, indent + "  ", v.front_right_motor);
    s << indent << "back_left_motor: ";
    Printer<int32_t>::stream(s, indent + "  ", v.back_left_motor);
    s << indent << "back_right_motor: ";
    Printer<int32_t>::stream(s, indent + "  ", v.back_right_motor);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RUMARINO_MESSAGE_MOTORS_HORIZONTAL_H
