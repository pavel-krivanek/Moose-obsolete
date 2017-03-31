spec
c_l_block_map_explicit_entry
	^ c_l_block_map_explicit_key, (l_block_map_explicit_value / e_node) 
	
	map: [ :key :value |
		key ->value
	]