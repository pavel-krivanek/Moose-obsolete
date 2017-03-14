spec
ns_flow_map_yaml_key_entry
	^	ns_flow_yaml_node, ((s_separate optional, c_ns_flow_map_separate_value) ==> #second / e_node)
	map: [ :key :value |
		key -> value
	]