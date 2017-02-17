spec
s_nb_folded_text
	^ s_indent, ns_char, nb_char star flatten
	
	map: [ :indent :ns :nb |
		ns asString, nb
	]