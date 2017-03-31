spec
ns_l_block_map_implicit_entry
	^ ( ns_s_block_map_implicit_key / e_node ), c_l_block_map_implicit_value
	map: [ :key :value |
		key -> value
	]