# Node identity within one tree (include or exclude). Root has parent_id == -1.
uint32 id
int32  parent_id  # -1 for root

# Node type
uint8 NODE_SECTION=0
uint8 NODE_LEAF=1
uint8 node_type

# For SECTION nodes
uint8 SECTION_AND=0
uint8 SECTION_OR=1
uint8 section_op  # valid only when node_type==NODE_SECTION

# Common
bool passed

# For LEAF nodes (a single condition check)
string target     # e.g., "env.visibility" or "module:foo" or "label:bar"
string predicate  # human-readable predicate summary (">= 200", "in ['rain','snow']", "truth(foo)")

# Union for the observed value on the LHS (only for taxonomy or truth targets, optional otherwise)
uint8 VALUE_NONE=0
uint8 VALUE_BOOL=1
uint8 VALUE_INT=2
uint8 VALUE_FLOAT=3
uint8 VALUE_STRING=4
uint8 value_type
bool   bool_value
int64  int_value
float64 float_value
string string_value

# Optional unit id when value_type is numeric
string unit_id
