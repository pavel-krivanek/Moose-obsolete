building
addEdges: aCollection source: source destination: destination
	| foundClasses |
	self addEdges: aCollection
		sourceBlock: [ :e |
			(source isKindOf: Array)
				ifTrue: [ 
					foundClasses := (source select: [ :asso | e isKindOf: asso key ]).
					foundClasses ifEmpty: [ nil ] ifNotEmpty: [ foundClasses last value value: e ].
				]
	     			"Symbol (method) or block based way"
				ifFalse: [ 
					source value: e.
				].
		] 
		destinationBlock: [  :e |
			(destination isKindOf: Array)
				ifTrue: [ 
					foundClasses := (destination select: [ :asso | e isKindOf: asso key ]).
					foundClasses ifEmpty: [ nil ] ifNotEmpty: [ foundClasses last value value: e ].
				]
	     			"Symbol (method) or block based way"
				ifFalse: [ 
					destination value: e.
				].
		].