# Type tag
uint8 NONE=0
uint8 POINT_WGS84=1
uint8 POLYGON_LOCAL=2
uint8 type

# If type == POINT_WGS84
sensor_msgs/NavSatFix navsat

# If type == POLYGON_LOCAL
string frame_id
geometry_msgs/Polygon polygon
