spec
l_folded_content
	^ (l_nb_diff_lines, b_chomped_last) optional, l_chomped_empty
	
	map: [ :lines :empty |
		| start end |
		lines 	ifNotNil: [ 
					start := lines first.
					end := ((lines second = #'end-of-input') 
						ifTrue: [ '' ] 
						ifFalse: [ lines second asString ]).
				] ifNil: [ 
					start := ''. 
					end := ''.
				].

		start, end.
	]