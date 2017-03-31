spec
s_nb_spaced_text 	
	^ s_indent, s_white, nb_char star flatten
	
	map: [ :indent :white :chars |
		white asString, chars
	]