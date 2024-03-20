;; Auto-generated. Do not edit!


(when (boundp 'autotarget::ServiceRelativeAltitude)
  (if (not (find-package "AUTOTARGET"))
    (make-package "AUTOTARGET"))
  (shadow 'ServiceRelativeAltitude (find-package "AUTOTARGET")))
(unless (find-package "AUTOTARGET::SERVICERELATIVEALTITUDE")
  (make-package "AUTOTARGET::SERVICERELATIVEALTITUDE"))
(unless (find-package "AUTOTARGET::SERVICERELATIVEALTITUDEREQUEST")
  (make-package "AUTOTARGET::SERVICERELATIVEALTITUDEREQUEST"))
(unless (find-package "AUTOTARGET::SERVICERELATIVEALTITUDERESPONSE")
  (make-package "AUTOTARGET::SERVICERELATIVEALTITUDERESPONSE"))

(in-package "ROS")





(defclass autotarget::ServiceRelativeAltitudeRequest
  :super ros::object
  :slots (_data ))

(defmethod autotarget::ServiceRelativeAltitudeRequest
  (:init
   (&key
    ((:data __data) 0.0)
    )
   (send-super :init)
   (setq _data (float __data))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; float64 _data
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _data
       (sys::poke _data (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _data
     (setq _data (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass autotarget::ServiceRelativeAltitudeResponse
  :super ros::object
  :slots (_state ))

(defmethod autotarget::ServiceRelativeAltitudeResponse
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

(defclass autotarget::ServiceRelativeAltitude
  :super ros::object
  :slots ())

(setf (get autotarget::ServiceRelativeAltitude :md5sum-) "19f2c0089be6db14a75854b6b17b5631")
(setf (get autotarget::ServiceRelativeAltitude :datatype-) "autotarget/ServiceRelativeAltitude")
(setf (get autotarget::ServiceRelativeAltitude :request) autotarget::ServiceRelativeAltitudeRequest)
(setf (get autotarget::ServiceRelativeAltitude :response) autotarget::ServiceRelativeAltitudeResponse)

(defmethod autotarget::ServiceRelativeAltitudeRequest
  (:response () (instance autotarget::ServiceRelativeAltitudeResponse :init)))

(setf (get autotarget::ServiceRelativeAltitudeRequest :md5sum-) "19f2c0089be6db14a75854b6b17b5631")
(setf (get autotarget::ServiceRelativeAltitudeRequest :datatype-) "autotarget/ServiceRelativeAltitudeRequest")
(setf (get autotarget::ServiceRelativeAltitudeRequest :definition-)
      "#http://docs.ros.org/en/api/std_msgs/html/msg/Float64.html
float64 data
---
bool state
")

(setf (get autotarget::ServiceRelativeAltitudeResponse :md5sum-) "19f2c0089be6db14a75854b6b17b5631")
(setf (get autotarget::ServiceRelativeAltitudeResponse :datatype-) "autotarget/ServiceRelativeAltitudeResponse")
(setf (get autotarget::ServiceRelativeAltitudeResponse :definition-)
      "#http://docs.ros.org/en/api/std_msgs/html/msg/Float64.html
float64 data
---
bool state
")



(provide :autotarget/ServiceRelativeAltitude "19f2c0089be6db14a75854b6b17b5631")


