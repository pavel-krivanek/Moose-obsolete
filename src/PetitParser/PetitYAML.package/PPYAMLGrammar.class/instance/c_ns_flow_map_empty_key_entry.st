spec
c_ns_flow_map_empty_key_entry 	
	^ 	e_node "Key", c_ns_flow_map_separate_value
	map: [ :key :sep |
		key -> sep
	]