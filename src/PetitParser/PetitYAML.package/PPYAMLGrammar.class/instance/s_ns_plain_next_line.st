spec
s_ns_plain_next_line
	^ s_flow_folded, ns_plain_char, nb_ns_plain_in_line
		
	map: [ :folding :char :line |
		folding asString, char asString, line
	]