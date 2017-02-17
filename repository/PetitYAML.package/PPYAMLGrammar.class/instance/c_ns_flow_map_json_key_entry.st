spec
c_ns_flow_map_json_key_entry
	^ c_flow_json_node, ( (s_separate optional, c_ns_flow_map_adjacent_value) ==> #second / e_node)
	
	map: [ :key :value |
		key -> value
	]