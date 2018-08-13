running
testClassTraitIfTraitAlreadyExists
		
	"test creation of named class trait if a related trait already exists"

	| existing |
	
	existing := (environment ensureTraitNamed: 'SomeTrait') classTrait.
	self assert: (existing isMetaclassTrait).
	self assert: (existing isRingResolved not).
	
	definition := environment ensureTraitNamed: 'SomeTrait classTrait'.
	self assert: (definition == existing).
	self assert: definition isClass not. 
	self assert: definition isMetaclass not. 	
	self assert: definition isTrait. 	
	self assert: definition isMetaclassTrait. 	
	self assert: definition baseTrait name equals: #SomeTrait.
