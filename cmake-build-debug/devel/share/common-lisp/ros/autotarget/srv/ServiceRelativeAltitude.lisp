; Auto-generated. Do not edit!


(cl:in-package autotarget-srv)


;//! \htmlinclude ServiceRelativeAltitude-request.msg.html

(cl:defclass <ServiceRelativeAltitude-request> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:float
    :initform 0.0))
)

(cl:defclass ServiceRelativeAltitude-request (<ServiceRelativeAltitude-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ServiceRelativeAltitude-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ServiceRelativeAltitude-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name autotarget-srv:<ServiceRelativeAltitude-request> is deprecated: use autotarget-srv:ServiceRelativeAltitude-request instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <ServiceRelativeAltitude-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autotarget-srv:data-val is deprecated.  Use autotarget-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServiceRelativeAltitude-request>) ostream)
  "Serializes a message object of type '<ServiceRelativeAltitude-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServiceRelativeAltitude-request>) istream)
  "Deserializes a message object of type '<ServiceRelativeAltitude-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ServiceRelativeAltitude-request>)))
  "Returns string type for a service object of type '<ServiceRelativeAltitude-request>"
  "autotarget/ServiceRelativeAltitudeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServiceRelativeAltitude-request)))
  "Returns string type for a service object of type 'ServiceRelativeAltitude-request"
  "autotarget/ServiceRelativeAltitudeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ServiceRelativeAltitude-request>)))
  "Returns md5sum for a message object of type '<ServiceRelativeAltitude-request>"
  "19f2c0089be6db14a75854b6b17b5631")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServiceRelativeAltitude-request)))
  "Returns md5sum for a message object of type 'ServiceRelativeAltitude-request"
  "19f2c0089be6db14a75854b6b17b5631")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServiceRelativeAltitude-request>)))
  "Returns full string definition for message of type '<ServiceRelativeAltitude-request>"
  (cl:format cl:nil "#http://docs.ros.org/en/api/std_msgs/html/msg/Float64.html~%float64 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServiceRelativeAltitude-request)))
  "Returns full string definition for message of type 'ServiceRelativeAltitude-request"
  (cl:format cl:nil "#http://docs.ros.org/en/api/std_msgs/html/msg/Float64.html~%float64 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServiceRelativeAltitude-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServiceRelativeAltitude-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ServiceRelativeAltitude-request
    (cl:cons ':data (data msg))
))
;//! \htmlinclude ServiceRelativeAltitude-response.msg.html

(cl:defclass <ServiceRelativeAltitude-response> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ServiceRelativeAltitude-response (<ServiceRelativeAltitude-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ServiceRelativeAltitude-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ServiceRelativeAltitude-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name autotarget-srv:<ServiceRelativeAltitude-response> is deprecated: use autotarget-srv:ServiceRelativeAltitude-response instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <ServiceRelativeAltitude-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autotarget-srv:state-val is deprecated.  Use autotarget-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServiceRelativeAltitude-response>) ostream)
  "Serializes a message object of type '<ServiceRelativeAltitude-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'state) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServiceRelativeAltitude-response>) istream)
  "Deserializes a message object of type '<ServiceRelativeAltitude-response>"
    (cl:setf (cl:slot-value msg 'state) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ServiceRelativeAltitude-response>)))
  "Returns string type for a service object of type '<ServiceRelativeAltitude-response>"
  "autotarget/ServiceRelativeAltitudeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServiceRelativeAltitude-response)))
  "Returns string type for a service object of type 'ServiceRelativeAltitude-response"
  "autotarget/ServiceRelativeAltitudeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ServiceRelativeAltitude-response>)))
  "Returns md5sum for a message object of type '<ServiceRelativeAltitude-response>"
  "19f2c0089be6db14a75854b6b17b5631")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServiceRelativeAltitude-response)))
  "Returns md5sum for a message object of type 'ServiceRelativeAltitude-response"
  "19f2c0089be6db14a75854b6b17b5631")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServiceRelativeAltitude-response>)))
  "Returns full string definition for message of type '<ServiceRelativeAltitude-response>"
  (cl:format cl:nil "bool state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServiceRelativeAltitude-response)))
  "Returns full string definition for message of type 'ServiceRelativeAltitude-response"
  (cl:format cl:nil "bool state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServiceRelativeAltitude-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServiceRelativeAltitude-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ServiceRelativeAltitude-response
    (cl:cons ':state (state msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ServiceRelativeAltitude)))
  'ServiceRelativeAltitude-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ServiceRelativeAltitude)))
  'ServiceRelativeAltitude-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServiceRelativeAltitude)))
  "Returns string type for a service object of type '<ServiceRelativeAltitude>"
  "autotarget/ServiceRelativeAltitude")