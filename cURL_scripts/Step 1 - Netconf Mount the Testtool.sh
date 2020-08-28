curl -X PUT \
-u admin:admin \
-H 'Accept: application/xml' \
-H 'Content-Type: application/xml' \
-d '<node xmlns="urn:TBD:params:xml:ns:yang:network-topology"> <node-id>testtool</node-id> <host xmlns="urn:opendaylight:netconf-node-topology">127.0.0.1</host> <port xmlns="urn:opendaylight:netconf-node-topology">17830</port> <username xmlns="urn:opendaylight:netconf-node-topology">admin</username> <password xmlns="urn:opendaylight:netconf-node-topology">admin</password> <tcp-only xmlns="urn:opendaylight:netconf-node-topology">false</tcp-only> <keepalive-delay xmlns="urn:opendaylight:netconf-node-topology">60</keepalive-delay> </node>' \
http://localhost:8181/restconf/config/network-topology:network-topology/topology/topology-netconf/node/testtool
