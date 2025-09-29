# Concept identifier (stable, language-neutral)
string id

# Value type constants
uint8 BOOL=0
uint8 INT=1
uint8 FLOAT=2
uint8 STRING=3
uint8 ENUM=4
uint8 value_type

# Optional provenance/status for this concept value
# OK: fresh, valid value
# STALE: present but beyond freshness bound (aggregator may still send it)
# INVALID: present but known invalid
# UNKNOWN: not observed / not derivable
uint8 STATUS_UNKNOWN=0
uint8 STATUS_OK=1
uint8 STATUS_STALE=2
uint8 STATUS_INVALID=3
uint8 status

# Carriers (use the one matching value_type)
bool    bool_value
int64   int_value
float64 float_value
string  string_value
