running
testTrait

	"test creation of named trait on empty environment"
		
	definition := environment ensureTraitNamed: 'SomeTrait'.
	self assert: definition isClass not. 
	self assert: definition isMetaclass not. 	
	self assert: definition isTrait. 	
	self assert: definition isMetaclassTrait not. 	