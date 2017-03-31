spec
b_l_spaced 
	^ b_as_line_feed, l_empty YAMLBlockIn star 
	
	map: [ :lf :empty |
		| retval |
		
		retval := lf asString.
		empty do: [ :line | retval := retval, line asString ].
		retval
	]