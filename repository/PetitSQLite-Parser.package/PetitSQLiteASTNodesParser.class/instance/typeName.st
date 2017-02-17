statements-elements
typeName 
	^super typeName ==> [ :token |
		token second isNil
			ifTrue: [Array with: token first value]
			ifFalse: [ token second size = 3 
				ifTrue:[ Array with: token first value with: (token second at: 2) first. ]
				ifFalse: [
					Array 
						with: token first value 
						with: ((token second at: 2) isArray 
									ifTrue: [(token second at: 2) first]
									ifFalse:[token second at: 2])  
						with: ((token second at: 4) isArray 
									ifTrue: [(token second at: 4) first]
									ifFalse:[token second at: 4])]
			]
		]