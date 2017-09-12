accessing
targetClass

	targetClass isSymbol
		ifTrue: [ 
			targetClass := self class environment at: targetClass 
				ifAbsent: [ self error: 'Cannot find class ', targetClass printString ] ].
	
	^targetClass