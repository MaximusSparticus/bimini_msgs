# BuildingFloor.msg
# Represents a single floor in a building

string id
string name
int32 level  # Floor number
float64 elevation  # Height from building origin
bimini_msgs/BuildingRoom[] rooms
bimini_msgs/BuildingElement[] elements  # Walls, doors, windows, etc.
