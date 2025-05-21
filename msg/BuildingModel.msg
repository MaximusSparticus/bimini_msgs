# BuildingModel.msg
# Represents a complete BIM building model

# Standard ROS header with timestamp and frame info
std_msgs/Header header

# Unique identifier for the building
string building_id

# Building metadata
string name
string description
string source_file  # Path to original IFC file

# Coordinate system information
geometry_msgs/Pose origin
float64 scale  # Scale factor from BIM units to meters

# Building structure
bimini_msgs/BuildingFloor[] floors  # Array of floors in the building

# Overall building dimensions
float64 width  # X dimension
float64 length  # Y dimension
float64 height  # Z dimension

# Additional metadata as key-value pairs
bimini_msgs/KeyValue[] properties