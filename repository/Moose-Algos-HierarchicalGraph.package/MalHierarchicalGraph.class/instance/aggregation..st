api
aggregation: howToGetParent
	| foundClasses |
	(howToGetParent isKindOf: Array)
		"Class based"
		ifTrue: [ 
			self blockToGetParent: [ :e |
				foundClasses := (howToGetParent select: [ :asso | e isKindOf: asso key ]).
				foundClasses ifEmpty: [ nil ] ifNotEmpty: [ foundClasses last value value: e ].
			]
		]
	      "Symbol (method) or block based way"
		ifFalse: [ 
			self blockToGetParent: [ :e | howToGetParent value: e ].
		].