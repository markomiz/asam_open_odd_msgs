string module_id
bool truth
string[] reasons  # concise human-readable bullets

# Include section tree (flattened)
uint32 include_root_id
asam_open_odd_msgs/CheckNode[] include_nodes

# Exclude section tree (flattened)
uint32 exclude_root_id
asam_open_odd_msgs/CheckNode[] exclude_nodes
