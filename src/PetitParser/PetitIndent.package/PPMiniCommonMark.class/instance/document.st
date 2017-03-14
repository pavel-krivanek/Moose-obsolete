document
document
	^ ((prefix, contentElement) nonEmpty ==> #second) star
	
	map: [ :elems |
		| cleanup |
		cleanup := elems reject: [ :e | e trim = '' ].
		cleanup joinUsing: String cr.
	]