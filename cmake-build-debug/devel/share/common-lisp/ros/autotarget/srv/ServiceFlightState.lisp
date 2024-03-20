; Auto-generated. Do not edit!


(cl:in-package autotarget-srv)


;//! \htmlinclude ServiceFlightState-request.msg.html

(cl:defclass <ServiceFlightState-request> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (connected
    :reader connected
    :initarg :connected
    :type cl:boolean
    :initform cl:nil)
   (armed
    :reader armed
    :initarg :armed
    :type cl:boolean
    :initform cl:nil)
   (guided
    :reader guided
    :initarg :guided
    :type cl:boolean
    :initform cl:nil)
   (manual_input
    :reader manual_input
    :initarg :manual_input
    :type cl:boolean
    :initform cl:nil)
   (mode
    :reader mode
    :initarg :mode
    :type cl:string
    :initform "")
   (system_status
    :reader system_status
    :initarg :system_status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ServiceFlightState-request (<ServiceFlightState-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ServiceFlightState-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ServiceFlightState-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name autotarget-srv:<ServiceFlightState-request> is deprecated: use autotarget-srv:ServiceFlightState-request instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ServiceFlightState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autotarget-srv:header-val is deprecated.  Use autotarget-srv:header instead.")
  (header m))

(cl:ensure-generic-function 'connected-val :lambda-list '(m))
(cl:defmethod connected-val ((m <ServiceFlightState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autotarget-srv:connected-val is deprecated.  Use autotarget-srv:connected instead.")
  (connected m))

(cl:ensure-generic-function 'armed-val :lambda-list '(m))
(cl:defmethod armed-val ((m <ServiceFlightState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autotarget-srv:armed-val is deprecated.  Use autotarget-srv:armed instead.")
  (armed m))

(cl:ensure-generic-function 'guided-val :lambda-list '(m))
(cl:defmethod guided-val ((m <ServiceFlightState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autotarget-srv:guided-val is deprecated.  Use autotarget-srv:guided instead.")
  (guided m))

(cl:ensure-generic-function 'manual_input-val :lambda-list '(m))
(cl:defmethod manual_input-val ((m <ServiceFlightState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autotarget-srv:manual_input-val is deprecated.  Use autotarget-srv:manual_input instead.")
  (manual_input m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <ServiceFlightState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autotarget-srv:mode-val is deprecated.  Use autotarget-srv:mode instead.")
  (mode m))

(cl:ensure-generic-function 'system_status-val :lambda-list '(m))
(cl:defmethod system_status-val ((m <ServiceFlightState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autotarget-srv:system_status-val is deprecated.  Use autotarget-srv:system_status instead.")
  (system_status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServiceFlightState-request>) ostream)
  "Serializes a message object of type '<ServiceFlightState-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'connected) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'armed) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'guided) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'manual_input) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mode))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mode))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'system_status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServiceFlightState-request>) istream)
  "Deserializes a message object of type '<ServiceFlightState-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'connected) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'armed) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'guided) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'manual_input) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mode) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'system_status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ServiceFlightState-request>)))
  "Returns string type for a service object of type '<ServiceFlightState-request>"
  "autotarget/ServiceFlightStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServiceFlightState-request)))
  "Returns string type for a service object of type 'ServiceFlightState-request"
  "autotarget/ServiceFlightStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ServiceFlightState-request>)))
  "Returns md5sum for a message object of type '<ServiceFlightState-request>"
  "6aae9ff3d63c0cb1e9cd74c840bff68a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServiceFlightState-request)))
  "Returns md5sum for a message object of type 'ServiceFlightState-request"
  "6aae9ff3d63c0cb1e9cd74c840bff68a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServiceFlightState-request>)))
  "Returns full string definition for message of type '<ServiceFlightState-request>"
  (cl:format cl:nil "# see https://mavlink.io/en/messages/common.html#MAV_STATE~%std_msgs/Header header~%bool connected~%bool armed~%bool guided~%bool manual_input~%string mode~%uint8 system_status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServiceFlightState-request)))
  "Returns full string definition for message of type 'ServiceFlightState-request"
  (cl:format cl:nil "# see https://mavlink.io/en/messages/common.html#MAV_STATE~%std_msgs/Header header~%bool connected~%bool armed~%bool guided~%bool manual_input~%string mode~%uint8 system_status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServiceFlightState-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     1
     4 (cl:length (cl:slot-value msg 'mode))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServiceFlightState-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ServiceFlightState-request
    (cl:cons ':header (header msg))
    (cl:cons ':connected (connected msg))
    (cl:cons ':armed (armed msg))
    (cl:cons ':guided (guided msg))
    (cl:cons ':manual_input (manual_input msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':system_status (system_status msg))
))
;//! \htmlinclude ServiceFlightState-response.msg.html

(cl:defclass <ServiceFlightState-response> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ServiceFlightState-response (<ServiceFlightState-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ServiceFlightState-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ServiceFlightState-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name autotarget-srv:<ServiceFlightState-response> is deprecated: use autotarget-srv:ServiceFlightState-response instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <ServiceFlightState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autotarget-srv:state-val is deprecated.  Use autotarget-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServiceFlightState-response>) ostream)
  "Serializes a message object of type '<ServiceFlightState-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'state) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServiceFlightState-response>) istream)
  "Deserializes a message object of type '<ServiceFlightState-response>"
    (cl:setf (cl:slot-value msg 'state) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ServiceFlightState-response>)))
  "Returns string type for a service object of type '<ServiceFlightState-response>"
  "autotarget/ServiceFlightStateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServiceFlightState-response)))
  "Returns string type for a service object of type 'ServiceFlightState-response"
  "autotarget/ServiceFlightStateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ServiceFlightState-response>)))
  "Returns md5sum for a message object of type '<ServiceFlightState-response>"
  "6aae9ff3d63c0cb1e9cd74c840bff68a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServiceFlightState-response)))
  "Returns md5sum for a message object of type 'ServiceFlightState-response"
  "6aae9ff3d63c0cb1e9cd74c840bff68a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServiceFlightState-response>)))
  "Returns full string definition for message of type '<ServiceFlightState-response>"
  (cl:format cl:nil "bool state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServiceFlightState-response)))
  "Returns full string definition for message of type 'ServiceFlightState-response"
  (cl:format cl:nil "bool state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServiceFlightState-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServiceFlightState-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ServiceFlightState-response
    (cl:cons ':state (state msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ServiceFlightState)))
  'ServiceFlightState-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ServiceFlightState)))
  'ServiceFlightState-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServiceFlightState)))
  "Returns string type for a service object of type '<ServiceFlightState>"
  "autotarget/ServiceFlightState")