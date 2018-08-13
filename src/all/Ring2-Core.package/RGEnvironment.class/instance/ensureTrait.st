cleaning
ensureTrait

	| aTrait |
	
	aTrait := self ask behaviorNamed: #Trait.
	aTrait ifNotNil: [ ^ aTrait ].
	
	aTrait := self ask behaviors detect: [ :each | 
		(each propertyNamed: #Trait ifAbsent: [ false ]) ] ifNone: [ nil ].
	aTrait ifNotNil: [ ^ aTrait ].

	aTrait := self ensureClassNamed: #Trait.	
	
	aTrait propertyNamed: #Trait put: true.	
	
	^ aTrait.