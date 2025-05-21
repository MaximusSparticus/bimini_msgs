# BuildingRoom.msg
# Represents a room or space in a building

string id
string name
string type  # Bedroom, bathroom, hallway, etc.
geometry_msgs/Polygon boundary  # 2D footprint
float64 height  # Ceiling height
string[] connected_rooms  # IDs of adjacent rooms
string[] connected_elements  # IDs of elements belonging to this room