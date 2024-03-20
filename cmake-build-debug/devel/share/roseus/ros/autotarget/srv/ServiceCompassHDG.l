;; Auto-generated. Do not edit!


(when (boundp 'autotarget::ServiceCompassHDG)
  (if (not (find-package "AUTOTARGET"))
    (make-package "AUTOTARGET"))
  (shadow 'ServiceCompassHDG (find-package "AUTOTARGET")))
(unless (find-package "AUTOTARGET::SERVICECOMPASSHDG")
  (make-package "AUTOTARGET::SERVICECOMPASSHDG"))
(unless (find-package "AUTOTARGET::SERVICECOMPASSHDGREQUEST")
  (make-package "AUTOTARGET::SERVICECOMPASSHDGREQUEST"))
(unless (find-package "AUTOTARGET::SERVICECOMPASSHDGRESPONSE")
  (make-package "AUTOTARGET::SERVICECOMPASSHDGRESPONSE"))

(in-package "ROS")





(defclass autotarget::ServiceCompassHDGRequest
  :super ros::object
  :slots (_data ))

(defmethod autotarget::ServiceCompassHDGRequest
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

(defclass autotarget::ServiceCompassHDGResponse
  :super ros::object
  :slots (_state ))

(defmethod autotarget::ServiceCompassHDGResponse
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

(defclass autotarget::ServiceCompassHDG
  :super ros::object
  :slots ())

(setf (get autotarget::ServiceCompassHDG :md5sum-) "19f2c0089be6db14a75854b6b17b5631")
(setf (get autotarget::ServiceCompassHDG :datatype-) "autotarget/ServiceCompassHDG")
(setf (get autotarget::ServiceCompassHDG :request) autotarget::ServiceCompassHDGRequest)
(setf (get autotarget::ServiceCompassHDG :response) autotarget::ServiceCompassHDGResponse)

(defmethod autotarget::ServiceCompassHDGRequest
  (:response () (instance autotarget::ServiceCompassHDGResponse :init)))

(setf (get autotarget::ServiceCompassHDGRequest :md5sum-) "19f2c0089be6db14a75854b6b17b5631")
(setf (get autotarget::ServiceCompassHDGRequest :datatype-) "autotarget/ServiceCompassHDGRequest")
(setf (get autotarget::ServiceCompassHDGRequest :definition-)
      "#http://docs.ros.org/en/api/std_msgs/html/msg/Float64.html
float64 data
---
bool state
")

(setf (get autotarget::ServiceCompassHDGResponse :md5sum-) "19f2c0089be6db14a75854b6b17b5631")
(setf (get autotarget::ServiceCompassHDGResponse :datatype-) "autotarget/ServiceCompassHDGResponse")
(setf (get autotarget::ServiceCompassHDGResponse :definition-)
      "#http://docs.ros.org/en/api/std_msgs/html/msg/Float64.html
float64 data
---
bool state
")



(provide :autotarget/ServiceCompassHDG "19f2c0089be6db14a75854b6b17b5631")


