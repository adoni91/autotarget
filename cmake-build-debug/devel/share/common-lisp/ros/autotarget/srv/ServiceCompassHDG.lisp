; Auto-generated. Do not edit!


(cl:in-package autotarget-srv)


;//! \htmlinclude ServiceCompassHDG-request.msg.html

(cl:defclass <ServiceCompassHDG-request> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:float
    :initform 0.0))
)

(cl:defclass ServiceCompassHDG-request (<ServiceCompassHDG-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ServiceCompassHDG-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ServiceCompassHDG-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name autotarget-srv:<ServiceCompassHDG-request> is deprecated: use autotarget-srv:ServiceCompassHDG-request instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <ServiceCompassHDG-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autotarget-srv:data-val is deprecated.  Use autotarget-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServiceCompassHDG-request>) ostream)
  "Serializes a message object of type '<ServiceCompassHDG-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServiceCompassHDG-request>) istream)
  "Deserializes a message object of type '<ServiceCompassHDG-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'data) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ServiceCompassHDG-request>)))
  "Returns string type for a service object of type '<ServiceCompassHDG-request>"
  "autotarget/ServiceCompassHDGRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServiceCompassHDG-request)))
  "Returns string type for a service object of type 'ServiceCompassHDG-request"
  "autotarget/ServiceCompassHDGRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ServiceCompassHDG-request>)))
  "Returns md5sum for a message object of type '<ServiceCompassHDG-request>"
  "19f2c0089be6db14a75854b6b17b5631")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServiceCompassHDG-request)))
  "Returns md5sum for a message object of type 'ServiceCompassHDG-request"
  "19f2c0089be6db14a75854b6b17b5631")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServiceCompassHDG-request>)))
  "Returns full string definition for message of type '<ServiceCompassHDG-request>"
  (cl:format cl:nil "#http://docs.ros.org/en/api/std_msgs/html/msg/Float64.html~%float64 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServiceCompassHDG-request)))
  "Returns full string definition for message of type 'ServiceCompassHDG-request"
  (cl:format cl:nil "#http://docs.ros.org/en/api/std_msgs/html/msg/Float64.html~%float64 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServiceCompassHDG-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServiceCompassHDG-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ServiceCompassHDG-request
    (cl:cons ':data (data msg))
))
;//! \htmlinclude ServiceCompassHDG-response.msg.html

(cl:defclass <ServiceCompassHDG-response> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ServiceCompassHDG-response (<ServiceCompassHDG-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ServiceCompassHDG-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ServiceCompassHDG-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name autotarget-srv:<ServiceCompassHDG-response> is deprecated: use autotarget-srv:ServiceCompassHDG-response instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <ServiceCompassHDG-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autotarget-srv:state-val is deprecated.  Use autotarget-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServiceCompassHDG-response>) ostream)
  "Serializes a message object of type '<ServiceCompassHDG-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'state) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServiceCompassHDG-response>) istream)
  "Deserializes a message object of type '<ServiceCompassHDG-response>"
    (cl:setf (cl:slot-value msg 'state) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ServiceCompassHDG-response>)))
  "Returns string type for a service object of type '<ServiceCompassHDG-response>"
  "autotarget/ServiceCompassHDGResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServiceCompassHDG-response)))
  "Returns string type for a service object of type 'ServiceCompassHDG-response"
  "autotarget/ServiceCompassHDGResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ServiceCompassHDG-response>)))
  "Returns md5sum for a message object of type '<ServiceCompassHDG-response>"
  "19f2c0089be6db14a75854b6b17b5631")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServiceCompassHDG-response)))
  "Returns md5sum for a message object of type 'ServiceCompassHDG-response"
  "19f2c0089be6db14a75854b6b17b5631")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServiceCompassHDG-response>)))
  "Returns full string definition for message of type '<ServiceCompassHDG-response>"
  (cl:format cl:nil "bool state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServiceCompassHDG-response)))
  "Returns full string definition for message of type 'ServiceCompassHDG-response"
  (cl:format cl:nil "bool state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServiceCompassHDG-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServiceCompassHDG-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ServiceCompassHDG-response
    (cl:cons ':state (state msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ServiceCompassHDG)))
  'ServiceCompassHDG-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ServiceCompassHDG)))
  'ServiceCompassHDG-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServiceCompassHDG)))
  "Returns string type for a service object of type '<ServiceCompassHDG>"
  "autotarget/ServiceCompassHDG")