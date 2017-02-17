spec
l_nb_same_lines 
	^ l_empty YAMLBlockIn star, (l_nb_folded_lines / l_nb_spaced_lines)  
	
	map: [ :empty :lines |
		|retval|
		retval := ''.
		empty do: [ :e | retval := retval, e asString ].
		retval := retval, lines.
		retval
	]