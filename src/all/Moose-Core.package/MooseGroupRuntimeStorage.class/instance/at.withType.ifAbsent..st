accessing
at: uniqueName withType: aClass ifAbsent: exceptionBlock
	| s |
	s := uniqueName asSymbol.
	^ (self
		shouldSort: (self selectAllWithType: aClass)
		withBlock: [ :a :b | a mooseName asSymbol <= b mooseName asSymbol ]
		type: aClass)
		findBinary: [ :a | 
			| aName |
			aName := a mooseName asSymbol.
			aName = s
				ifTrue: [ 0 ]
				ifFalse: [ s < aName
						ifTrue: [ -1 ]
						ifFalse: [ 1 ] ] ]
		ifNone: exceptionBlock