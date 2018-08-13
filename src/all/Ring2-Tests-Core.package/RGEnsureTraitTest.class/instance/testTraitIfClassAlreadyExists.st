running
testTraitIfClassAlreadyExists
		
	"test creation of named trait if a class of the realted name already exists"

	| existing |
	
	existing := (environment ensureClassNamed: 'SomeTrait').
	self assert: (existing isClass).
	self assert: (existing isRingResolved).
	
	definition := environment ensureTraitNamed: 'SomeTrait'.
	self assert: (definition == existing).
	self assert: definition isClass not. 
	self assert: definition isMetaclass not. 	
	self assert: definition isTrait. 	
	self assert: definition isMetaclassTrait not. 	
