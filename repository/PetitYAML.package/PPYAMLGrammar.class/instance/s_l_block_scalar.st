spec
s_l_block_scalar
	^ s_separate YAMLNPlus"(n+1,c)", (c_ns_properties YAMLNPlus "(n+1,c)", 
												s_separate YAMLNPlus "(n+1,c)" ) optional,
		( c_l_literal / c_l_folded) 
	map: [ :separate :props :rest |
		rest
	]