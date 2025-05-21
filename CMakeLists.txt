cmake_minimum_required(VERSION 3.5)
project(bimini_msgs)

# Find dependencies
find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(std_msgs REQUIRED)
find_package(geometry_msgs REQUIRED)

# Generate interfaces
rosidl_generate_interfaces(${PROJECT_NAME}
  "msg/BuildingModel.msg"
  "msg/BuildingFloor.msg"
  "msg/BuildingRoom.msg"
  "msg/BuildingElement.msg"
  "msg/KeyValue.msg"
  DEPENDENCIES std_msgs geometry_msgs
)

ament_package()
