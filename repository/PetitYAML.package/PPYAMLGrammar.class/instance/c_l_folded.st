spec
c_l_folded 	
	^ $> asParser, c_b_block_header, (l_folded_content >=> [ :context :cc |
		| retval |
		context YAMLN: (context YAMLN + context YAMLM).
		retval := cc value.
		context YAMLRestoreN.
		retval
	]) ==> #third