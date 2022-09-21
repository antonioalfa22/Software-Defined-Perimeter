INSERT INTO sdpid(sdpid,valid,type,country,state,locality,org,org_unit,alt_name,email,serial) VALUES (1,1,'gateway','ES', 'PA', 'A', 'Uniovi', 'SE', 'PhD', 'abc@xyz.com', 'abc123');
INSERT INTO sdpid(sdpid,valid,type,country,state,locality,org,org_unit,alt_name,email,serial)VALUES (2,1,'controller','ES', 'PA', 'A', 'Uniovi', 'SE', 'PhD', 'abc@xyz.com', 'abc123');
INSERT INTO sdpid(sdpid,valid,type,country,state,locality,org,org_unit,alt_name,email,serial)VALUES (3,1,'client','ES', 'PA', 'A', 'Uniovi', 'SE', 'PhD', 'abc@xyz.com', 'abc123');
INSERT INTO service VALUES(1,'controller', 'controller' );
INSERT INTO service VALUES(2,'tcp', 'tcp' );
INSERT INTO service VALUES(3,'udp', 'udp' );
INSERT INTO service_gateway (id,service_id, gateway_sdpid, protocol, port, nat_ip, nat_port) VALUES(1, 1, 1 ,'tcp',5000, 'controllerIP', 5000);
INSERT INTO service_gateway (id,service_id, gateway_sdpid, protocol, port, nat_ip, nat_port) VALUES(2, 2, 1 ,'tcp',4444, 'gatewayIP', 4444);
INSERT INTO sdpid_service VALUES (1, 1, 1);
INSERT INTO sdpid_service VALUES (2, 1, 2);
INSERT INTO sdpid_service VALUES(3, 3, 1);
INSERT INTO sdpid_service VALUES(4, 3, 2);