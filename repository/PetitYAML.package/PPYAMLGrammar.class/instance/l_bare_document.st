spec
l_bare_document 	
	^ s_l_block_node "(-1,block_in)" >=>
	[ :context |
		context YAMLContext: #'block-in'.
		context YAMLN: -1.
	]