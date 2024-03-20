# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "autotarget: 0 messages, 5 services")

set(MSG_I_FLAGS "-Iautotarget:/home/will/catkin_ws/src/autotarget/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(autotarget_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/will/catkin_ws/src/autotarget/srv/ServiceBatteryState.srv" NAME_WE)
add_custom_target(_autotarget_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "autotarget" "/home/will/catkin_ws/src/autotarget/srv/ServiceBatteryState.srv" ""
)

get_filename_component(_filename "/home/will/catkin_ws/src/autotarget/srv/ServiceCompassHDG.srv" NAME_WE)
add_custom_target(_autotarget_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "autotarget" "/home/will/catkin_ws/src/autotarget/srv/ServiceCompassHDG.srv" ""
)

get_filename_component(_filename "/home/will/catkin_ws/src/autotarget/srv/ServiceNavSatFix.srv" NAME_WE)
add_custom_target(_autotarget_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "autotarget" "/home/will/catkin_ws/src/autotarget/srv/ServiceNavSatFix.srv" ""
)

get_filename_component(_filename "/home/will/catkin_ws/src/autotarget/srv/ServiceRelativeAltitude.srv" NAME_WE)
add_custom_target(_autotarget_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "autotarget" "/home/will/catkin_ws/src/autotarget/srv/ServiceRelativeAltitude.srv" ""
)

get_filename_component(_filename "/home/will/catkin_ws/src/autotarget/srv/ServiceFlightState.srv" NAME_WE)
add_custom_target(_autotarget_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "autotarget" "/home/will/catkin_ws/src/autotarget/srv/ServiceFlightState.srv" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(autotarget
  "/home/will/catkin_ws/src/autotarget/srv/ServiceBatteryState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autotarget
)
_generate_srv_cpp(autotarget
  "/home/will/catkin_ws/src/autotarget/srv/ServiceCompassHDG.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autotarget
)
_generate_srv_cpp(autotarget
  "/home/will/catkin_ws/src/autotarget/srv/ServiceNavSatFix.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autotarget
)
_generate_srv_cpp(autotarget
  "/home/will/catkin_ws/src/autotarget/srv/ServiceRelativeAltitude.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autotarget
)
_generate_srv_cpp(autotarget
  "/home/will/catkin_ws/src/autotarget/srv/ServiceFlightState.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autotarget
)

### Generating Module File
_generate_module_cpp(autotarget
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autotarget
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(autotarget_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(autotarget_generate_messages autotarget_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/will/catkin_ws/src/autotarget/srv/ServiceBatteryState.srv" NAME_WE)
add_dependencies(autotarget_generate_messages_cpp _autotarget_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/will/catkin_ws/src/autotarget/srv/ServiceCompassHDG.srv" NAME_WE)
add_dependencies(autotarget_generate_messages_cpp _autotarget_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/will/catkin_ws/src/autotarget/srv/ServiceNavSatFix.srv" NAME_WE)
add_dependencies(autotarget_generate_messages_cpp _autotarget_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/will/catkin_ws/src/autotarget/srv/ServiceRelativeAltitude.srv" NAME_WE)
add_dependencies(autotarget_generate_messages_cpp _autotarget_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/will/catkin_ws/src/autotarget/srv/ServiceFlightState.srv" NAME_WE)
add_dependencies(autotarget_generate_messages_cpp _autotarget_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(autotarget_gencpp)
add_dependencies(autotarget_gencpp autotarget_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS autotarget_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(autotarget
  "/home/will/catkin_ws/src/autotarget/srv/ServiceBatteryState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autotarget
)
_generate_srv_eus(autotarget
  "/home/will/catkin_ws/src/autotarget/srv/ServiceCompassHDG.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autotarget
)
_generate_srv_eus(autotarget
  "/home/will/catkin_ws/src/autotarget/srv/ServiceNavSatFix.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autotarget
)
_generate_srv_eus(autotarget
  "/home/will/catkin_ws/src/autotarget/srv/ServiceRelativeAltitude.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autotarget
)
_generate_srv_eus(autotarget
  "/home/will/catkin_ws/src/autotarget/srv/ServiceFlightState.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autotarget
)

### Generating Module File
_generate_module_eus(autotarget
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autotarget
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(autotarget_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(autotarget_generate_messages autotarget_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/will/catkin_ws/src/autotarget/srv/ServiceBatteryState.srv" NAME_WE)
add_dependencies(autotarget_generate_messages_eus _autotarget_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/will/catkin_ws/src/autotarget/srv/ServiceCompassHDG.srv" NAME_WE)
add_dependencies(autotarget_generate_messages_eus _autotarget_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/will/catkin_ws/src/autotarget/srv/ServiceNavSatFix.srv" NAME_WE)
add_dependencies(autotarget_generate_messages_eus _autotarget_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/will/catkin_ws/src/autotarget/srv/ServiceRelativeAltitude.srv" NAME_WE)
add_dependencies(autotarget_generate_messages_eus _autotarget_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/will/catkin_ws/src/autotarget/srv/ServiceFlightState.srv" NAME_WE)
add_dependencies(autotarget_generate_messages_eus _autotarget_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(autotarget_geneus)
add_dependencies(autotarget_geneus autotarget_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS autotarget_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(autotarget
  "/home/will/catkin_ws/src/autotarget/srv/ServiceBatteryState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autotarget
)
_generate_srv_lisp(autotarget
  "/home/will/catkin_ws/src/autotarget/srv/ServiceCompassHDG.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autotarget
)
_generate_srv_lisp(autotarget
  "/home/will/catkin_ws/src/autotarget/srv/ServiceNavSatFix.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autotarget
)
_generate_srv_lisp(autotarget
  "/home/will/catkin_ws/src/autotarget/srv/ServiceRelativeAltitude.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autotarget
)
_generate_srv_lisp(autotarget
  "/home/will/catkin_ws/src/autotarget/srv/ServiceFlightState.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autotarget
)

### Generating Module File
_generate_module_lisp(autotarget
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autotarget
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(autotarget_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(autotarget_generate_messages autotarget_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/will/catkin_ws/src/autotarget/srv/ServiceBatteryState.srv" NAME_WE)
add_dependencies(autotarget_generate_messages_lisp _autotarget_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/will/catkin_ws/src/autotarget/srv/ServiceCompassHDG.srv" NAME_WE)
add_dependencies(autotarget_generate_messages_lisp _autotarget_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/will/catkin_ws/src/autotarget/srv/ServiceNavSatFix.srv" NAME_WE)
add_dependencies(autotarget_generate_messages_lisp _autotarget_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/will/catkin_ws/src/autotarget/srv/ServiceRelativeAltitude.srv" NAME_WE)
add_dependencies(autotarget_generate_messages_lisp _autotarget_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/will/catkin_ws/src/autotarget/srv/ServiceFlightState.srv" NAME_WE)
add_dependencies(autotarget_generate_messages_lisp _autotarget_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(autotarget_genlisp)
add_dependencies(autotarget_genlisp autotarget_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS autotarget_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(autotarget
  "/home/will/catkin_ws/src/autotarget/srv/ServiceBatteryState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autotarget
)
_generate_srv_nodejs(autotarget
  "/home/will/catkin_ws/src/autotarget/srv/ServiceCompassHDG.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autotarget
)
_generate_srv_nodejs(autotarget
  "/home/will/catkin_ws/src/autotarget/srv/ServiceNavSatFix.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autotarget
)
_generate_srv_nodejs(autotarget
  "/home/will/catkin_ws/src/autotarget/srv/ServiceRelativeAltitude.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autotarget
)
_generate_srv_nodejs(autotarget
  "/home/will/catkin_ws/src/autotarget/srv/ServiceFlightState.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autotarget
)

### Generating Module File
_generate_module_nodejs(autotarget
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autotarget
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(autotarget_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(autotarget_generate_messages autotarget_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/will/catkin_ws/src/autotarget/srv/ServiceBatteryState.srv" NAME_WE)
add_dependencies(autotarget_generate_messages_nodejs _autotarget_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/will/catkin_ws/src/autotarget/srv/ServiceCompassHDG.srv" NAME_WE)
add_dependencies(autotarget_generate_messages_nodejs _autotarget_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/will/catkin_ws/src/autotarget/srv/ServiceNavSatFix.srv" NAME_WE)
add_dependencies(autotarget_generate_messages_nodejs _autotarget_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/will/catkin_ws/src/autotarget/srv/ServiceRelativeAltitude.srv" NAME_WE)
add_dependencies(autotarget_generate_messages_nodejs _autotarget_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/will/catkin_ws/src/autotarget/srv/ServiceFlightState.srv" NAME_WE)
add_dependencies(autotarget_generate_messages_nodejs _autotarget_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(autotarget_gennodejs)
add_dependencies(autotarget_gennodejs autotarget_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS autotarget_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(autotarget
  "/home/will/catkin_ws/src/autotarget/srv/ServiceBatteryState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autotarget
)
_generate_srv_py(autotarget
  "/home/will/catkin_ws/src/autotarget/srv/ServiceCompassHDG.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autotarget
)
_generate_srv_py(autotarget
  "/home/will/catkin_ws/src/autotarget/srv/ServiceNavSatFix.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autotarget
)
_generate_srv_py(autotarget
  "/home/will/catkin_ws/src/autotarget/srv/ServiceRelativeAltitude.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autotarget
)
_generate_srv_py(autotarget
  "/home/will/catkin_ws/src/autotarget/srv/ServiceFlightState.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autotarget
)

### Generating Module File
_generate_module_py(autotarget
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autotarget
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(autotarget_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(autotarget_generate_messages autotarget_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/will/catkin_ws/src/autotarget/srv/ServiceBatteryState.srv" NAME_WE)
add_dependencies(autotarget_generate_messages_py _autotarget_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/will/catkin_ws/src/autotarget/srv/ServiceCompassHDG.srv" NAME_WE)
add_dependencies(autotarget_generate_messages_py _autotarget_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/will/catkin_ws/src/autotarget/srv/ServiceNavSatFix.srv" NAME_WE)
add_dependencies(autotarget_generate_messages_py _autotarget_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/will/catkin_ws/src/autotarget/srv/ServiceRelativeAltitude.srv" NAME_WE)
add_dependencies(autotarget_generate_messages_py _autotarget_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/will/catkin_ws/src/autotarget/srv/ServiceFlightState.srv" NAME_WE)
add_dependencies(autotarget_generate_messages_py _autotarget_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(autotarget_genpy)
add_dependencies(autotarget_genpy autotarget_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS autotarget_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autotarget)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autotarget
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(autotarget_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autotarget)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autotarget
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(autotarget_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autotarget)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autotarget
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(autotarget_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autotarget)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autotarget
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(autotarget_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autotarget)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autotarget\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autotarget
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  string(REGEX REPLACE "([][+.*()^])" "\\\\\\1" ESCAPED_PATH "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autotarget")
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autotarget
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${ESCAPED_PATH}/.+/__init__.pyc?$"
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(autotarget_generate_messages_py std_msgs_generate_messages_py)
endif()
