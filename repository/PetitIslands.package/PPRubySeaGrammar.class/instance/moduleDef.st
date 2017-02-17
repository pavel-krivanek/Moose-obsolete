grammar
moduleDef
	"Indentation Sensitive Class Definition"
	^ kModuleIS, 
		cpath trim, 
		body, 
		kEndIS
	
	
	map: [ :module :cp :prim :end | 
		| retval |
		retval := OrderedCollection new.
		prim do: [ :m |
			retval addAll: (m collect: [:e | '::', cp, e ]).
		].
		retval.
	]