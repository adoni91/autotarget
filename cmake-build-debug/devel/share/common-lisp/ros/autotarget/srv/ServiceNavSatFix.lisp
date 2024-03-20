; Auto-generated. Do not edit!


(cl:in-package autotarget-srv)


;//! \htmlinclude ServiceNavSatFix-request.msg.html

(cl:defclass <ServiceNavSatFix-request> (roslisp-msg-protocol:ros-message)
  ((latitude
    :reader latitude
    :initarg :latitude
    :type cl:float
    :initform 0.0)
   (longitude
    :reader longitude
    :initarg :longitude
    :type cl:float
    :initform 0.0)
   (altitude
    :reader altitude
    :initarg :altitude
    :type cl:float
    :initform 0.0)
   (position_covariance
    :reader position_covariance
    :initarg :position_covariance
    :type (cl:vector cl:float)
   :initform (cl:make-array 9 :element-type 'cl:float :initial-element 0.0))
   (position_covariance_type
    :reader position_covariance_type
    :initarg :position_covariance_type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ServiceNavSatFix-request (<ServiceNavSatFix-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ServiceNavSatFix-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ServiceNavSatFix-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name autotarget-srv:<ServiceNavSatFix-request> is deprecated: use autotarget-srv:ServiceNavSatFix-request instead.")))

(cl:ensure-generic-function 'latitude-val :lambda-list '(m))
(cl:defmethod latitude-val ((m <ServiceNavSatFix-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autotarget-srv:latitude-val is deprecated.  Use autotarget-srv:latitude instead.")
  (latitude m))

(cl:ensure-generic-function 'longitude-val :lambda-list '(m))
(cl:defmethod longitude-val ((m <ServiceNavSatFix-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autotarget-srv:longitude-val is deprecated.  Use autotarget-srv:longitude instead.")
  (longitude m))

(cl:ensure-generic-function 'altitude-val :lambda-list '(m))
(cl:defmethod altitude-val ((m <ServiceNavSatFix-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autotarget-srv:altitude-val is deprecated.  Use autotarget-srv:altitude instead.")
  (altitude m))

(cl:ensure-generic-function 'position_covariance-val :lambda-list '(m))
(cl:defmethod position_covariance-val ((m <ServiceNavSatFix-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autotarget-srv:position_covariance-val is deprecated.  Use autotarget-srv:position_covariance instead.")
  (position_covariance m))

(cl:ensure-generic-function 'position_covariance_type-val :lambda-list '(m))
(cl:defmethod position_covariance_type-val ((m <ServiceNavSatFix-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autotarget-srv:position_covariance_type-val is deprecated.  Use autotarget-srv:position_covariance_type instead.")
  (position_covariance_type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServiceNavSatFix-request>) ostream)
  "Serializes a message object of type '<ServiceNavSatFix-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'latitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'longitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'altitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'position_covariance))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'position_covariance_type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServiceNavSatFix-request>) istream)
  "Deserializes a message object of type '<ServiceNavSatFix-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'latitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'longitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'altitude) (roslisp-utils:decode-double-float-bits bits)))
  (cl:setf (cl:slot-value msg 'position_covariance) (cl:make-array 9))
  (cl:let ((vals (cl:slot-value msg 'position_covariance)))
    (cl:dotimes (i 9)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'position_covariance_type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ServiceNavSatFix-request>)))
  "Returns string type for a service object of type '<ServiceNavSatFix-request>"
  "autotarget/ServiceNavSatFixRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServiceNavSatFix-request)))
  "Returns string type for a service object of type 'ServiceNavSatFix-request"
  "autotarget/ServiceNavSatFixRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ServiceNavSatFix-request>)))
  "Returns md5sum for a message object of type '<ServiceNavSatFix-request>"
  "33db69623ce17999aa79e5c384edc1b9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServiceNavSatFix-request)))
  "Returns md5sum for a message object of type 'ServiceNavSatFix-request"
  "33db69623ce17999aa79e5c384edc1b9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServiceNavSatFix-request>)))
  "Returns full string definition for message of type '<ServiceNavSatFix-request>"
  (cl:format cl:nil "#http://docs.ros.org/en/api/sensor_msgs/html/msg/NavSatFix.html~%float64 latitude~%float64 longitude~%float64 altitude~%float64[9] position_covariance~%uint8 position_covariance_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServiceNavSatFix-request)))
  "Returns full string definition for message of type 'ServiceNavSatFix-request"
  (cl:format cl:nil "#http://docs.ros.org/en/api/sensor_msgs/html/msg/NavSatFix.html~%float64 latitude~%float64 longitude~%float64 altitude~%float64[9] position_covariance~%uint8 position_covariance_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServiceNavSatFix-request>))
  (cl:+ 0
     8
     8
     8
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'position_covariance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServiceNavSatFix-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ServiceNavSatFix-request
    (cl:cons ':latitude (latitude msg))
    (cl:cons ':longitude (longitude msg))
    (cl:cons ':altitude (altitude msg))
    (cl:cons ':position_covariance (position_covariance msg))
    (cl:cons ':position_covariance_type (position_covariance_type msg))
))
;//! \htmlinclude ServiceNavSatFix-response.msg.html

(cl:defclass <ServiceNavSatFix-response> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ServiceNavSatFix-response (<ServiceNavSatFix-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ServiceNavSatFix-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ServiceNavSatFix-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name autotarget-srv:<ServiceNavSatFix-response> is deprecated: use autotarget-srv:ServiceNavSatFix-response instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <ServiceNavSatFix-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autotarget-srv:state-val is deprecated.  Use autotarget-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServiceNavSatFix-response>) ostream)
  "Serializes a message object of type '<ServiceNavSatFix-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'state) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServiceNavSatFix-response>) istream)
  "Deserializes a message object of type '<ServiceNavSatFix-response>"
    (cl:setf (cl:slot-value msg 'state) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ServiceNavSatFix-response>)))
  "Returns string type for a service object of type '<ServiceNavSatFix-response>"
  "autotarget/ServiceNavSatFixResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServiceNavSatFix-response)))
  "Returns string type for a service object of type 'ServiceNavSatFix-response"
  "autotarget/ServiceNavSatFixResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ServiceNavSatFix-response>)))
  "Returns md5sum for a message object of type '<ServiceNavSatFix-response>"
  "33db69623ce17999aa79e5c384edc1b9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServiceNavSatFix-response)))
  "Returns md5sum for a message object of type 'ServiceNavSatFix-response"
  "33db69623ce17999aa79e5c384edc1b9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServiceNavSatFix-response>)))
  "Returns full string definition for message of type '<ServiceNavSatFix-response>"
  (cl:format cl:nil "bool state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServiceNavSatFix-response)))
  "Returns full string definition for message of type 'ServiceNavSatFix-response"
  (cl:format cl:nil "bool state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServiceNavSatFix-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServiceNavSatFix-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ServiceNavSatFix-response
    (cl:cons ':state (state msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ServiceNavSatFix)))
  'ServiceNavSatFix-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ServiceNavSatFix)))
  'ServiceNavSatFix-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServiceNavSatFix)))
  "Returns string type for a service object of type '<ServiceNavSatFix>"
  "autotarget/ServiceNavSatFix")