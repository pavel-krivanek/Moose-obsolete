lists
listContent
	^ 	
	contentElement,	
	(	
		((prefix, contentElement) nonEmpty 	==> #second) /
		((listDoubleBlanks not, quoteDedent not, (quote / space) star, lineEnd) nonEmpty 
														==> [ :e | '' ])
	) star
	
	map: [ :first :rest |
		| retval |
		retval := OrderedCollection with: first.
		retval addAll: rest. 
		retval := retval reject: [ :e | e trim = '' ].
		retval joinUsing: String cr.
	] 