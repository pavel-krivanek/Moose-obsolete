running
testClassTrait
		
	"test creation of named class trait on empty environment"

	definition := environment ensureTraitNamed: 'SomeTrait classTrait'.
	self assert: definition isClass not. 
	self assert: definition isMetaclass not. 	
	self assert: definition isTrait. 	
	self assert: definition isMetaclassTrait. 	
