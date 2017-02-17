spec
b_nb_literal_next 
	^ b_as_line_feed, l_nb_literal_text
	map: [ :lf :text |
		lf asString, text
	]