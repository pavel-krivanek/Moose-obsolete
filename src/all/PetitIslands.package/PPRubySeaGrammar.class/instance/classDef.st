grammar - class
classDef
	"Indentation Sensitive Class Definition"
	^ kClassIS, 
		cpath trim, 
		superclass optional, 
		body, 
		kEndIS
	
	
	map: [ :cl :cp :sup :content :end | 
		| retval |
		retval := OrderedCollection new.
		content do: [ :m |
			retval addAll: (m collect: [:e | '::', cp, e ]).
		].
		retval.
	]