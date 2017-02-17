spec
s_double_next_line
	^ s_double_break, ( ns_double_char, nb_ns_double_in_line, 
		(s_double_next_line / (s_white star flatten))) optional 
		
	map: [ :break :rest |
		| retval |
		retval := break.
		rest ifNotNil: [ 
			retval := retval, rest first asString.
			retval := retval, rest second.
			rest third ifNotNil: [ 
				retval := retval, rest third.
			].
			retval
		]
	].