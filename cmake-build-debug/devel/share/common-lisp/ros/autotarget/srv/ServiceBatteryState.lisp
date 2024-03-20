; Auto-generated. Do not edit!


(cl:in-package autotarget-srv)


;//! \htmlinclude ServiceBatteryState-request.msg.html

(cl:defclass <ServiceBatteryState-request> (roslisp-msg-protocol:ros-message)
  ((voltage
    :reader voltage
    :initarg :voltage
    :type cl:float
    :initform 0.0)
   (current
    :reader current
    :initarg :current
    :type cl:float
    :initform 0.0)
   (charge
    :reader charge
    :initarg :charge
    :type cl:float
    :initform 0.0)
   (percentage
    :reader percentage
    :initarg :percentage
    :type cl:float
    :initform 0.0)
   (power_supply_status
    :reader power_supply_status
    :initarg :power_supply_status
    :type cl:fixnum
    :initform 0)
   (power_supply_health
    :reader power_supply_health
    :initarg :power_supply_health
    :type cl:fixnum
    :initform 0)
   (present
    :reader present
    :initarg :present
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ServiceBatteryState-request (<ServiceBatteryState-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ServiceBatteryState-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ServiceBatteryState-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name autotarget-srv:<ServiceBatteryState-request> is deprecated: use autotarget-srv:ServiceBatteryState-request instead.")))

(cl:ensure-generic-function 'voltage-val :lambda-list '(m))
(cl:defmethod voltage-val ((m <ServiceBatteryState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autotarget-srv:voltage-val is deprecated.  Use autotarget-srv:voltage instead.")
  (voltage m))

(cl:ensure-generic-function 'current-val :lambda-list '(m))
(cl:defmethod current-val ((m <ServiceBatteryState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autotarget-srv:current-val is deprecated.  Use autotarget-srv:current instead.")
  (current m))

(cl:ensure-generic-function 'charge-val :lambda-list '(m))
(cl:defmethod charge-val ((m <ServiceBatteryState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autotarget-srv:charge-val is deprecated.  Use autotarget-srv:charge instead.")
  (charge m))

(cl:ensure-generic-function 'percentage-val :lambda-list '(m))
(cl:defmethod percentage-val ((m <ServiceBatteryState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autotarget-srv:percentage-val is deprecated.  Use autotarget-srv:percentage instead.")
  (percentage m))

(cl:ensure-generic-function 'power_supply_status-val :lambda-list '(m))
(cl:defmethod power_supply_status-val ((m <ServiceBatteryState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autotarget-srv:power_supply_status-val is deprecated.  Use autotarget-srv:power_supply_status instead.")
  (power_supply_status m))

(cl:ensure-generic-function 'power_supply_health-val :lambda-list '(m))
(cl:defmethod power_supply_health-val ((m <ServiceBatteryState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autotarget-srv:power_supply_health-val is deprecated.  Use autotarget-srv:power_supply_health instead.")
  (power_supply_health m))

(cl:ensure-generic-function 'present-val :lambda-list '(m))
(cl:defmethod present-val ((m <ServiceBatteryState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autotarget-srv:present-val is deprecated.  Use autotarget-srv:present instead.")
  (present m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServiceBatteryState-request>) ostream)
  "Serializes a message object of type '<ServiceBatteryState-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'voltage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'current))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'charge))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'percentage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'power_supply_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'power_supply_health)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'present) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServiceBatteryState-request>) istream)
  "Deserializes a message object of type '<ServiceBatteryState-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'voltage) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'charge) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'percentage) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'power_supply_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'power_supply_health)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'present) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ServiceBatteryState-request>)))
  "Returns string type for a service object of type '<ServiceBatteryState-request>"
  "autotarget/ServiceBatteryStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServiceBatteryState-request)))
  "Returns string type for a service object of type 'ServiceBatteryState-request"
  "autotarget/ServiceBatteryStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ServiceBatteryState-request>)))
  "Returns md5sum for a message object of type '<ServiceBatteryState-request>"
  "c7ce01d96b454c3c8b489965fb260778")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServiceBatteryState-request)))
  "Returns md5sum for a message object of type 'ServiceBatteryState-request"
  "c7ce01d96b454c3c8b489965fb260778")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServiceBatteryState-request>)))
  "Returns full string definition for message of type '<ServiceBatteryState-request>"
  (cl:format cl:nil "float32 voltage~%float32 current~%float32 charge~%#float32 capacity~%#float32 design_capacity~%float32 percentage~%uint8 power_supply_status~%uint8 power_supply_health~%#uint8 power_supply_technology~%bool present~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServiceBatteryState-request)))
  "Returns full string definition for message of type 'ServiceBatteryState-request"
  (cl:format cl:nil "float32 voltage~%float32 current~%float32 charge~%#float32 capacity~%#float32 design_capacity~%float32 percentage~%uint8 power_supply_status~%uint8 power_supply_health~%#uint8 power_supply_technology~%bool present~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServiceBatteryState-request>))
  (cl:+ 0
     4
     4
     4
     4
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServiceBatteryState-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ServiceBatteryState-request
    (cl:cons ':voltage (voltage msg))
    (cl:cons ':current (current msg))
    (cl:cons ':charge (charge msg))
    (cl:cons ':percentage (percentage msg))
    (cl:cons ':power_supply_status (power_supply_status msg))
    (cl:cons ':power_supply_health (power_supply_health msg))
    (cl:cons ':present (present msg))
))
;//! \htmlinclude ServiceBatteryState-response.msg.html

(cl:defclass <ServiceBatteryState-response> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ServiceBatteryState-response (<ServiceBatteryState-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ServiceBatteryState-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ServiceBatteryState-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name autotarget-srv:<ServiceBatteryState-response> is deprecated: use autotarget-srv:ServiceBatteryState-response instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <ServiceBatteryState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autotarget-srv:state-val is deprecated.  Use autotarget-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServiceBatteryState-response>) ostream)
  "Serializes a message object of type '<ServiceBatteryState-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'state) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServiceBatteryState-response>) istream)
  "Deserializes a message object of type '<ServiceBatteryState-response>"
    (cl:setf (cl:slot-value msg 'state) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ServiceBatteryState-response>)))
  "Returns string type for a service object of type '<ServiceBatteryState-response>"
  "autotarget/ServiceBatteryStateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServiceBatteryState-response)))
  "Returns string type for a service object of type 'ServiceBatteryState-response"
  "autotarget/ServiceBatteryStateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ServiceBatteryState-response>)))
  "Returns md5sum for a message object of type '<ServiceBatteryState-response>"
  "c7ce01d96b454c3c8b489965fb260778")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServiceBatteryState-response)))
  "Returns md5sum for a message object of type 'ServiceBatteryState-response"
  "c7ce01d96b454c3c8b489965fb260778")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServiceBatteryState-response>)))
  "Returns full string definition for message of type '<ServiceBatteryState-response>"
  (cl:format cl:nil "bool state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServiceBatteryState-response)))
  "Returns full string definition for message of type 'ServiceBatteryState-response"
  (cl:format cl:nil "bool state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServiceBatteryState-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServiceBatteryState-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ServiceBatteryState-response
    (cl:cons ':state (state msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ServiceBatteryState)))
  'ServiceBatteryState-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ServiceBatteryState)))
  'ServiceBatteryState-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServiceBatteryState)))
  "Returns string type for a service object of type '<ServiceBatteryState>"
  "autotarget/ServiceBatteryState")