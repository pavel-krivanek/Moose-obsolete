spec
l_nb_folded_lines 	
	^ s_nb_folded_text, (b_l_folded YAMLBlockIn, s_nb_folded_text) star 
	
	map: [ :text :rest |
		|retval|
		
		retval := text.
		rest do: [ :e |  
			retval := retval, e first.
			retval := retval, e second.
		].
		retval
	]