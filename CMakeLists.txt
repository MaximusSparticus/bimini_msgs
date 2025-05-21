cmake_minimum_required(VERSION 3.5)
project(bimini_msgs)

# Find dependencies
find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(std_msgs REQUIRED)
find_package(geometry_msgs REQUIRED)
find_package(nav_msgs REQUIRED)

set(MSG_FILES
    "msg/BuildingModel.msg"
    "msg/BuildingFloor.msg"
    "msg/BuildingRoom.msg"
    "msg/BuildingElement.msg"
    "msg/KeyValue.msg"
)

set(SRV_FILES
    "srv/LoadBuilding.srv"
    "srv/QueryBuildingElement.srv"
    "srv/GenerateNavigationMap.srv"
    "srv/ExportSimulationModel.srv"
)

# Generate interfaces
rosidl_generate_interfaces(${PROJECT_NAME}
    ${MSG_FILES}
    ${SRV_FILES}
    DEPENDENCIES std_msgs geometry_msgs nav_msgs
)

ament_package()
