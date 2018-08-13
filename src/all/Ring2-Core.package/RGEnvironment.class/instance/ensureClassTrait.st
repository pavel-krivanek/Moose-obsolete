cleaning
ensureClassTrait

	| aClassTrait |
	
	aClassTrait := self ask behaviorNamed: #ClassTrait.
	aClassTrait ifNotNil: [ ^ aClassTrait ].
	
	aClassTrait := self ask behaviors detect: [ :each | 
		(each propertyNamed: #ClassTrait ifAbsent: [ false ]) ] ifNone: [ nil ].
	aClassTrait ifNotNil: [ ^ aClassTrait ].

	aClassTrait := self ensureClassNamed: #ClassTrait.	
	
	aClassTrait propertyNamed: #ClassTrait put: true.	
	
	^ aClassTrait.