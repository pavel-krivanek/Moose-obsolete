running
testTraitIfClassTraitAlreadyExists
		
	"test creation of named trait if a related class trait already exists"

	| existing |
	
	existing := (environment ensureTraitNamed: 'SomeTrait classTrait') baseTrait.
	self assert: (existing isTrait).
	self assert: (existing isRingResolved not).
	
	definition := environment ensureTraitNamed: 'SomeTrait'.
	self assert: (definition == existing).
	self assert: definition isClass not. 
	self assert: definition isMetaclass not. 	
	self assert: definition isTrait. 	
	self assert: definition isMetaclassTrait not. 