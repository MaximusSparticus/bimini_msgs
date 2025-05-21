# BuildingElement.msg
# Represents a building element like wall, door, window

string id
string type  # WALL, DOOR, WINDOW, COLUMN, etc.
geometry_msgs/Pose pose
geometry_msgs/Vector3 dimensions
string material
bool is_structural
bimini_msgs/KeyValue[] properties  # Additional properties