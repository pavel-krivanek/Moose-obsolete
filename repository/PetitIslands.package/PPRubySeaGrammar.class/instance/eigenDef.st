grammar
eigenDef
	^ kClassIS , '<<' asParser trim , (identifier / kSelf) , 
		body, 
		kEndIS 
	
	map: [ :class :tmp :ref :content :end |
		| retval |
		retval := OrderedCollection new.
		content do: [ :m |
			retval addAll: (m collect: [:e | '.', ref, e ]).
		].
		retval.		
	]
