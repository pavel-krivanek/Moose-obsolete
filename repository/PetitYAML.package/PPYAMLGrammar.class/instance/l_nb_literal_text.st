spec
l_nb_literal_text
	^ ((l_empty YAMLBlockIn) star, s_indent, nb_char plus flatten)
	
	map: [ :empty :indent :text |
		| retval |
		retval := ''.
		empty do: [ :e |
			retval := retval, e asString.
		].
		retval := retval, text.
		retval
	]