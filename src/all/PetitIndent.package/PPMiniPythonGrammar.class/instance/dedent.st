indent-dedent
dedent
	^ ((([ :context | context indentStack pop ] asParser, 
		(emptyLine, newline) star, 
		((align, blank not ==> #first) / (align not, blank star flatten ==> #second))
	  )
	
	map: [ :_pop :_empty :_align  | 
		_align
	]) and, #pop asParser ==> #first)

		"JK: Hackish, because of imperfect push-pop analysis"
		propertyAt: #indentPop put: true;
		yourself
