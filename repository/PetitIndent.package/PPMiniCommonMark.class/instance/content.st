document
content
	^ contentElement,
	((prefix, contentElement) nonEmpty ==> #second) star
	
	map: [ :first :rest |
		| retval |
		retval := OrderedCollection with: first.
		retval addAll: rest. 
		retval := retval reject: [ :e | e trim = '' ].
		retval joinUsing: String cr.
	] 