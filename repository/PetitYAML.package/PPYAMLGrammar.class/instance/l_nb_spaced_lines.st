spec
l_nb_spaced_lines
	^ s_nb_spaced_text, (b_l_spaced, s_nb_spaced_text) star

	
	map: [ :text :rest |
		|retval|
		
		retval := text.
		rest do: [ :e |  
			retval := retval, e first.
			retval := retval, e second.
		].
		retval
	]