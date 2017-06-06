spec
l_block_sequence
	^ ( s_indent "(n+m)", c_l_block_seq_entry"(n+m)" ==> #second) plus
		"/* For some fixed auto_detected m > 0 */ "
	
	>=> [ :context :cc |
		| retval |
		context YAMLN: (context YAMLN + (self autoDetect: context)).
			
		retval := cc value.
		
		context YAMLRestoreN.
		retval
	]		