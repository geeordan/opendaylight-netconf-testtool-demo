curl -X PUT \
-u admin:admin \
-H 'Accept: application/json' \
-H 'Content-Type: application/json' \
-d '{"openconfig-interfaces:interfaces": {"interface": [{"config": {"description": "Interface ge-1/2/3 mod 01", "name": "ge-1/2/3"}, "name": "ge-1/2/3", "openconfig-vlan:routed-vlan": {"openconfig-if-ip:ipv4": {"config": {}}}, "subinterfaces": {"subinterface": [{"config": {"index": 0}, "index": 0, "openconfig-if-ip:ipv4": {"addresses": {"address": [{"config": {"prefix-length": 20}, "ip": "172.18.1.1"}]}}}]}}]}}' \
http://localhost:8181/restconf/config/network-topology:network-topology/topology/topology-netconf/node/testtool/yang-ext:mount/openconfig-interfaces:interfaces
