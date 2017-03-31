spec
c_flow_json_node
	^ ( c_ns_properties, s_separate optional) optional, c_flow_json_content ==> #second