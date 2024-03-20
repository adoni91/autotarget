;; Auto-generated. Do not edit!


(when (boundp 'autotarget::ServiceNavSatFix)
  (if (not (find-package "AUTOTARGET"))
    (make-package "AUTOTARGET"))
  (shadow 'ServiceNavSatFix (find-package "AUTOTARGET")))
(unless (find-package "AUTOTARGET::SERVICENAVSATFIX")
  (make-package "AUTOTARGET::SERVICENAVSATFIX"))
(unless (find-package "AUTOTARGET::SERVICENAVSATFIXREQUEST")
  (make-package "AUTOTARGET::SERVICENAVSATFIXREQUEST"))
(unless (find-package "AUTOTARGET::SERVICENAVSATFIXRESPONSE")
  (make-package "AUTOTARGET::SERVICENAVSATFIXRESPONSE"))

(in-package "ROS")





(defclass autotarget::ServiceNavSatFixRequest
  :super ros::object
  :slots (_latitude _longitude _altitude _position_covariance _position_covariance_type ))

(defmethod autotarget::ServiceNavSatFixRequest
  (:init
   (&key
    ((:latitude __latitude) 0.0)
    ((:longitude __longitude) 0.0)
    ((:altitude __altitude) 0.0)
    ((:position_covariance __position_covariance) (make-array 9 :initial-element 0.0 :element-type :float))
    ((:position_covariance_type __position_covariance_type) 0)
    )
   (send-super :init)
   (setq _latitude (float __latitude))
   (setq _longitude (float __longitude))
   (setq _altitude (float __altitude))
   (setq _position_covariance __position_covariance)
   (setq _position_covariance_type (round __position_covariance_type))
   self)
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:altitude
   (&optional __altitude)
   (if __altitude (setq _altitude __altitude)) _altitude)
  (:position_covariance
   (&optional __position_covariance)
   (if __position_covariance (setq _position_covariance __position_covariance)) _position_covariance)
  (:position_covariance_type
   (&optional __position_covariance_type)
   (if __position_covariance_type (setq _position_covariance_type __position_covariance_type)) _position_covariance_type)
  (:serialization-length
   ()
   (+
    ;; float64 _latitude
    8
    ;; float64 _longitude
    8
    ;; float64 _altitude
    8
    ;; float64[9] _position_covariance
    (* 8    9)
    ;; uint8 _position_covariance_type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _altitude
       (sys::poke _altitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[9] _position_covariance
     (dotimes (i 9)
       (sys::poke (elt _position_covariance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; uint8 _position_covariance_type
       (write-byte _position_covariance_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _longitude
     (setq _longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _altitude
     (setq _altitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64[9] _position_covariance
   (dotimes (i (length _position_covariance))
     (setf (elt _position_covariance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; uint8 _position_covariance_type
     (setq _position_covariance_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass autotarget::ServiceNavSatFixResponse
  :super ros::object
  :slots (_state ))

(defmethod autotarget::ServiceNavSatFixResponse
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

(defclass autotarget::ServiceNavSatFix
  :super ros::object
  :slots ())

(setf (get autotarget::ServiceNavSatFix :md5sum-) "33db69623ce17999aa79e5c384edc1b9")
(setf (get autotarget::ServiceNavSatFix :datatype-) "autotarget/ServiceNavSatFix")
(setf (get autotarget::ServiceNavSatFix :request) autotarget::ServiceNavSatFixRequest)
(setf (get autotarget::ServiceNavSatFix :response) autotarget::ServiceNavSatFixResponse)

(defmethod autotarget::ServiceNavSatFixRequest
  (:response () (instance autotarget::ServiceNavSatFixResponse :init)))

(setf (get autotarget::ServiceNavSatFixRequest :md5sum-) "33db69623ce17999aa79e5c384edc1b9")
(setf (get autotarget::ServiceNavSatFixRequest :datatype-) "autotarget/ServiceNavSatFixRequest")
(setf (get autotarget::ServiceNavSatFixRequest :definition-)
      "#http://docs.ros.org/en/api/sensor_msgs/html/msg/NavSatFix.html
float64 latitude
float64 longitude
float64 altitude
float64[9] position_covariance
uint8 position_covariance_type
---
bool state
")

(setf (get autotarget::ServiceNavSatFixResponse :md5sum-) "33db69623ce17999aa79e5c384edc1b9")
(setf (get autotarget::ServiceNavSatFixResponse :datatype-) "autotarget/ServiceNavSatFixResponse")
(setf (get autotarget::ServiceNavSatFixResponse :definition-)
      "#http://docs.ros.org/en/api/sensor_msgs/html/msg/NavSatFix.html
float64 latitude
float64 longitude
float64 altitude
float64[9] position_covariance
uint8 position_covariance_type
---
bool state
")



(provide :autotarget/ServiceNavSatFix "33db69623ce17999aa79e5c384edc1b9")


