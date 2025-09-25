# asam_open_odd_msgs

ROS 2 interface package (messages & service) for integrating an ASAM OpenODD-style Operational Design Domain into robotic/autonomous driving stacks. These messages let you publish Current Operational Domain (COD) snapshots, evaluate ODD modules to tri-state results, and consume an overall ODD state.

## Topics & QoS (recommended)

/odd/cod — asam_open_odd_msgs/msg/Cod

QoS: reliable, keep last=1.

/odd/result — asam_open_odd_msgs/msg/Result

QoS: reliable, transient_local, keep last=1 (new subscribers get the latest immediately).

## Design notes

Tri-state everywhere (FALSE/TRUE/UNKNOWN) to handle missing or stale inputs deterministically.

Explainability: module results carry false and unknown predicate IDs for direct operator feedback and debugging.

Spatial extent supports both simple point (WGS-84) and local polygons for geofenced logic.