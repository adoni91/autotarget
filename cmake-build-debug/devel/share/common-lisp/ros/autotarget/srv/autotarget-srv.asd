
(cl:in-package :asdf)

(defsystem "autotarget-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ServiceBatteryState" :depends-on ("_package_ServiceBatteryState"))
    (:file "_package_ServiceBatteryState" :depends-on ("_package"))
    (:file "ServiceCompassHDG" :depends-on ("_package_ServiceCompassHDG"))
    (:file "_package_ServiceCompassHDG" :depends-on ("_package"))
    (:file "ServiceFlightState" :depends-on ("_package_ServiceFlightState"))
    (:file "_package_ServiceFlightState" :depends-on ("_package"))
    (:file "ServiceNavSatFix" :depends-on ("_package_ServiceNavSatFix"))
    (:file "_package_ServiceNavSatFix" :depends-on ("_package"))
    (:file "ServiceRelativeAltitude" :depends-on ("_package_ServiceRelativeAltitude"))
    (:file "_package_ServiceRelativeAltitude" :depends-on ("_package"))
  ))