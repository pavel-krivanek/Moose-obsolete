running
testClassTraitIfMetaclassAlreadyExists
		
	"test creation of named class trait if a related metaclass already exists"

	| existing |
	
	existing := (environment ensureClassNamed: 'SomeTrait class') baseClass .
	self assert: (existing isClass).
	self assert: (existing isRingResolved not).
	
	definition := environment ensureTraitNamed: 'SomeTrait classTrait'.
	self assert: (definition baseTrait == existing).
	self assert: definition baseTrait isClass not. 
	self assert: definition baseTrait isMetaclass not. 	
	self assert: definition baseTrait isTrait. 	
	self assert: definition baseTrait isMetaclassTrait not. 	
	self assert: definition baseTrait name equals: #SomeTrait.
