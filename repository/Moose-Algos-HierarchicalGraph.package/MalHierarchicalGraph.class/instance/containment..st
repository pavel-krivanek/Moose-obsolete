api
containment: howToGetChildren
	| foundClasses |
	(howToGetChildren isKindOf: Array)
		"Class based"
		ifTrue: [ 
			self blockToGetChildren: [ :e |
				foundClasses := (howToGetChildren select: [ :asso | e isKindOf: asso key ]).
				foundClasses ifEmpty: [ nil ] ifNotEmpty: [ foundClasses last value value: e ].
			]
		]
	
		"Symbol (method) or block based way"
		ifFalse: [ 
			self blockToGetChildren: [ :e | howToGetChildren value: e ].
		].