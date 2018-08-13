caching
replaceName: aSymbol with: aNewSymbol

	| anRGBehavior |
	anRGBehavior := behaviorsDictionary at: aSymbol ifAbsent: [ nil ].
	anRGBehavior ifNotNil: [ 
		behaviorsDictionary removeKey: aSymbol.
		behaviorsDictionary at: aNewSymbol put: anRGBehavior.
		 ]
	