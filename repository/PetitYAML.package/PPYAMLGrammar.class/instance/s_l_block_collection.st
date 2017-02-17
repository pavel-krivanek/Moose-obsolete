spec
s_l_block_collection 	
	^ 	( s_separate YAMLNPlus, c_ns_properties YAMLNPlus ) optional, s_l_comments,
		( l_block_sequence YAMLSeqSpaces / l_block_mapping ) 
	
	map: [ :props :comments :sequenceOrMapping |
		sequenceOrMapping 
	]