spec
l_bare_document 	
	^ s_l_block_node "(-1,block_in)" >=>
	[ :context :cc |
		| retval aYAMLContext |

	
		aYAMLContext := context YAMLContext.
		context YAMLContext: #'block-in'.
		context YAMLN: -1.

		retval := cc value.
		retval.
	]