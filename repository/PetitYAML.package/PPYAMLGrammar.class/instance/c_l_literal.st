spec
c_l_literal 
	^ ($| asParser, c_b_block_header, (l_literal_content >=> [ :context :cc |
		| retval |
		context YAMLN: (context YAMLN + context YAMLM).
			
		retval := cc value.
		context YAMLRestoreN.
		context YAMLM: 1.
		retval
	])) ==> #third