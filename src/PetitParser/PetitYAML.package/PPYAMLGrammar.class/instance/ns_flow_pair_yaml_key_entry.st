spec
ns_flow_pair_yaml_key_entry
	^ 	ns_s_implicit_yaml_key YAMLFlowKey,
		c_ns_flow_map_separate_value
	
	map: [ :first :second |
		first -> second
	]