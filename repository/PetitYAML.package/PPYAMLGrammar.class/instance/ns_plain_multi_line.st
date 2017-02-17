spec
ns_plain_multi_line
	^ ns_plain_one_line, s_ns_plain_next_line star 
	
	
	map: [ :first :rest |
		| retval |
		retval := first.
		rest do: [ :e | retval := retval, e ].
		retval
	]