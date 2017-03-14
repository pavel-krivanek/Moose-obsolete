grammar - method
methodDef
	^ kDefIS, 
		('self.' asParser / (identifier, $. asParser)) flatten trim optional ,
		fname trim, 
		primary,
	  	defEndIS 
	
	map: [ :def :static :name :content :end |
		| mName retval |
		mName := static isNil 	ifTrue: [ '.', name ]
										ifFalse: [ '.', static, name ].

		retval := OrderedCollection new.
		content do: [ :e | retval addAll: (e collect: [ :e2 | mName, e2 ]) ].
		retval add: mName.
		retval										
	]
