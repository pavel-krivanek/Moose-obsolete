spec
ns_flow_map_explicit_entry
	^ ns_flow_map_implicit_entry /
		(( e_node, e_node ) map: [ :key :value | key -> value ])
	