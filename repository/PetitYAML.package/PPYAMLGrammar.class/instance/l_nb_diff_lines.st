spec
l_nb_diff_lines
	^ l_nb_same_lines, (b_as_line_feed, l_nb_same_lines) star 
	
	map: [ :lines :rest | 
		| retval |
		retval := lines.
		rest do: [ :e |
			retval := retval, e first asString.
			retval := retval, e second.
		].
		retval
	]