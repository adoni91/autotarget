;; Auto-generated. Do not edit!


(when (boundp 'autotarget::ServiceBatteryState)
  (if (not (find-package "AUTOTARGET"))
    (make-package "AUTOTARGET"))
  (shadow 'ServiceBatteryState (find-package "AUTOTARGET")))
(unless (find-package "AUTOTARGET::SERVICEBATTERYSTATE")
  (make-package "AUTOTARGET::SERVICEBATTERYSTATE"))
(unless (find-package "AUTOTARGET::SERVICEBATTERYSTATEREQUEST")
  (make-package "AUTOTARGET::SERVICEBATTERYSTATEREQUEST"))
(unless (find-package "AUTOTARGET::SERVICEBATTERYSTATERESPONSE")
  (make-package "AUTOTARGET::SERVICEBATTERYSTATERESPONSE"))

(in-package "ROS")





(defclass autotarget::ServiceBatteryStateRequest
  :super ros::object
  :slots (_voltage _current _charge _percentage _power_supply_status _power_supply_health _present ))

(defmethod autotarget::ServiceBatteryStateRequest
  (:init
   (&key
    ((:voltage __voltage) 0.0)
    ((:current __current) 0.0)
    ((:charge __charge) 0.0)
    ((:percentage __percentage) 0.0)
    ((:power_supply_status __power_supply_status) 0)
    ((:power_supply_health __power_supply_health) 0)
    ((:present __present) nil)
    )
   (send-super :init)
   (setq _voltage (float __voltage))
   (setq _current (float __current))
   (setq _charge (float __charge))
   (setq _percentage (float __percentage))
   (setq _power_supply_status (round __power_supply_status))
   (setq _power_supply_health (round __power_supply_health))
   (setq _present __present)
   self)
  (:voltage
   (&optional __voltage)
   (if __voltage (setq _voltage __voltage)) _voltage)
  (:current
   (&optional __current)
   (if __current (setq _current __current)) _current)
  (:charge
   (&optional __charge)
   (if __charge (setq _charge __charge)) _charge)
  (:percentage
   (&optional __percentage)
   (if __percentage (setq _percentage __percentage)) _percentage)
  (:power_supply_status
   (&optional __power_supply_status)
   (if __power_supply_status (setq _power_supply_status __power_supply_status)) _power_supply_status)
  (:power_supply_health
   (&optional __power_supply_health)
   (if __power_supply_health (setq _power_supply_health __power_supply_health)) _power_supply_health)
  (:present
   (&optional (__present :null))
   (if (not (eq __present :null)) (setq _present __present)) _present)
  (:serialization-length
   ()
   (+
    ;; float32 _voltage
    4
    ;; float32 _current
    4
    ;; float32 _charge
    4
    ;; float32 _percentage
    4
    ;; uint8 _power_supply_status
    1
    ;; uint8 _power_supply_health
    1
    ;; bool _present
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _voltage
       (sys::poke _voltage (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _current
       (sys::poke _current (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _charge
       (sys::poke _charge (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _percentage
       (sys::poke _percentage (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _power_supply_status
       (write-byte _power_supply_status s)
     ;; uint8 _power_supply_health
       (write-byte _power_supply_health s)
     ;; bool _present
       (if _present (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _voltage
     (setq _voltage (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _current
     (setq _current (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _charge
     (setq _charge (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _percentage
     (setq _percentage (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _power_supply_status
     (setq _power_supply_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _power_supply_health
     (setq _power_supply_health (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _present
     (setq _present (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass autotarget::ServiceBatteryStateResponse
  :super ros::object
  :slots (_state ))

(defmethod autotarget::ServiceBatteryStateResponse
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

(defclass autotarget::ServiceBatteryState
  :super ros::object
  :slots ())

(setf (get autotarget::ServiceBatteryState :md5sum-) "c7ce01d96b454c3c8b489965fb260778")
(setf (get autotarget::ServiceBatteryState :datatype-) "autotarget/ServiceBatteryState")
(setf (get autotarget::ServiceBatteryState :request) autotarget::ServiceBatteryStateRequest)
(setf (get autotarget::ServiceBatteryState :response) autotarget::ServiceBatteryStateResponse)

(defmethod autotarget::ServiceBatteryStateRequest
  (:response () (instance autotarget::ServiceBatteryStateResponse :init)))

(setf (get autotarget::ServiceBatteryStateRequest :md5sum-) "c7ce01d96b454c3c8b489965fb260778")
(setf (get autotarget::ServiceBatteryStateRequest :datatype-) "autotarget/ServiceBatteryStateRequest")
(setf (get autotarget::ServiceBatteryStateRequest :definition-)
      "float32 voltage
float32 current
float32 charge
#float32 capacity
#float32 design_capacity
float32 percentage
uint8 power_supply_status
uint8 power_supply_health
#uint8 power_supply_technology
bool present
---
bool state
")

(setf (get autotarget::ServiceBatteryStateResponse :md5sum-) "c7ce01d96b454c3c8b489965fb260778")
(setf (get autotarget::ServiceBatteryStateResponse :datatype-) "autotarget/ServiceBatteryStateResponse")
(setf (get autotarget::ServiceBatteryStateResponse :definition-)
      "float32 voltage
float32 current
float32 charge
#float32 capacity
#float32 design_capacity
float32 percentage
uint8 power_supply_status
uint8 power_supply_health
#uint8 power_supply_technology
bool present
---
bool state
")



(provide :autotarget/ServiceBatteryState "c7ce01d96b454c3c8b489965fb260778")


