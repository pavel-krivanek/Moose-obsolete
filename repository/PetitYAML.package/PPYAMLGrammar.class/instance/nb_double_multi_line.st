spec
nb_double_multi_line 	
 	^ nb_ns_double_in_line, (s_double_next_line / (s_white star flatten)) 
	
	map: [ :first :rest | 
		first, rest
	]