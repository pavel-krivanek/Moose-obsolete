spec
l_literal_content 
	^ (l_nb_literal_text, b_nb_literal_next star, b_chomped_last) optional, l_chomped_empty
	
	map: [ :start :empty |
		start ifNotNil: [  
			| retval text next last |
			text := start first.
			next := start second.
			last := start third.
			
			retval := text.
			next do: [ :nextText | retval := retval, nextText ].
			retval := retval, last asString.
			retval, empty
		] ifNil: [ 
	 		empty
		]
	]