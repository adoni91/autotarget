;; Auto-generated. Do not edit!


(when (boundp 'autotarget::ServiceFlightState)
  (if (not (find-package "AUTOTARGET"))
    (make-package "AUTOTARGET"))
  (shadow 'ServiceFlightState (find-package "AUTOTARGET")))
(unless (find-package "AUTOTARGET::SERVICEFLIGHTSTATE")
  (make-package "AUTOTARGET::SERVICEFLIGHTSTATE"))
(unless (find-package "AUTOTARGET::SERVICEFLIGHTSTATEREQUEST")
  (make-package "AUTOTARGET::SERVICEFLIGHTSTATEREQUEST"))
(unless (find-package "AUTOTARGET::SERVICEFLIGHTSTATERESPONSE")
  (make-package "AUTOTARGET::SERVICEFLIGHTSTATERESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))




(defclass autotarget::ServiceFlightStateRequest
  :super ros::object
  :slots (_header _connected _armed _guided _manual_input _mode _system_status ))

(defmethod autotarget::ServiceFlightStateRequest
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:connected __connected) nil)
    ((:armed __armed) nil)
    ((:guided __guided) nil)
    ((:manual_input __manual_input) nil)
    ((:mode __mode) "")
    ((:system_status __system_status) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _connected __connected)
   (setq _armed __armed)
   (setq _guided __guided)
   (setq _manual_input __manual_input)
   (setq _mode (string __mode))
   (setq _system_status (round __system_status))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:connected
   (&optional (__connected :null))
   (if (not (eq __connected :null)) (setq _connected __connected)) _connected)
  (:armed
   (&optional (__armed :null))
   (if (not (eq __armed :null)) (setq _armed __armed)) _armed)
  (:guided
   (&optional (__guided :null))
   (if (not (eq __guided :null)) (setq _guided __guided)) _guided)
  (:manual_input
   (&optional (__manual_input :null))
   (if (not (eq __manual_input :null)) (setq _manual_input __manual_input)) _manual_input)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:system_status
   (&optional __system_status)
   (if __system_status (setq _system_status __system_status)) _system_status)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _connected
    1
    ;; bool _armed
    1
    ;; bool _guided
    1
    ;; bool _manual_input
    1
    ;; string _mode
    4 (length _mode)
    ;; uint8 _system_status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _connected
       (if _connected (write-byte -1 s) (write-byte 0 s))
     ;; bool _armed
       (if _armed (write-byte -1 s) (write-byte 0 s))
     ;; bool _guided
       (if _guided (write-byte -1 s) (write-byte 0 s))
     ;; bool _manual_input
       (if _manual_input (write-byte -1 s) (write-byte 0 s))
     ;; string _mode
       (write-long (length _mode) s) (princ _mode s)
     ;; uint8 _system_status
       (write-byte _system_status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _connected
     (setq _connected (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _armed
     (setq _armed (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _guided
     (setq _guided (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _manual_input
     (setq _manual_input (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _mode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _system_status
     (setq _system_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass autotarget::ServiceFlightStateResponse
  :super ros::object
  :slots (_state ))

(defmethod autotarget::ServiceFlightStateResponse
  (:init
   (&key
    ((:state __state) nil)
    )
   (send-super :init)
   (setq _state __state)
   self)
  (:state
   (&optional (__state :null))
   (if (not (eq __state :null)) (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; bool _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _state
       (if _state (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _state
     (setq _state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass autotarget::ServiceFlightState
  :super ros::object
  :slots ())

(setf (get autotarget::ServiceFlightState :md5sum-) "6aae9ff3d63c0cb1e9cd74c840bff68a")
(setf (get autotarget::ServiceFlightState :datatype-) "autotarget/ServiceFlightState")
(setf (get autotarget::ServiceFlightState :request) autotarget::ServiceFlightStateRequest)
(setf (get autotarget::ServiceFlightState :response) autotarget::ServiceFlightStateResponse)

(defmethod autotarget::ServiceFlightStateRequest
  (:response () (instance autotarget::ServiceFlightStateResponse :init)))

(setf (get autotarget::ServiceFlightStateRequest :md5sum-) "6aae9ff3d63c0cb1e9cd74c840bff68a")
(setf (get autotarget::ServiceFlightStateRequest :datatype-) "autotarget/ServiceFlightStateRequest")
(setf (get autotarget::ServiceFlightStateRequest :definition-)
      "# see https://mavlink.io/en/messages/common.html#MAV_STATE
std_msgs/Header header
bool connected
bool armed
bool guided
bool manual_input
string mode
uint8 system_status

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id
---
bool state
")

(setf (get autotarget::ServiceFlightStateResponse :md5sum-) "6aae9ff3d63c0cb1e9cd74c840bff68a")
(setf (get autotarget::ServiceFlightStateResponse :datatype-) "autotarget/ServiceFlightStateResponse")
(setf (get autotarget::ServiceFlightStateResponse :definition-)
      "# see https://mavlink.io/en/messages/common.html#MAV_STATE
std_msgs/Header header
bool connected
bool armed
bool guided
bool manual_input
string mode
uint8 system_status

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id
---
bool state
")



(provide :autotarget/ServiceFlightState "6aae9ff3d63c0cb1e9cd74c840bff68a")


