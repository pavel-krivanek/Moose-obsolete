tests
testEnsureClassNamed

	| env definition | 
	
	env := RGEnvironment new.
	definition := env ensurePackageNamed: 'SomePackage'.
	self assert: definition isPackage. 

	env := RGEnvironment new.
	definition := env ensureClassNamed: 'SomeClass'.
	self assert: definition isClass. 
	self assert: definition isMetaclass not. 	
	self assert: definition isTrait not. 	
	self assert: definition isMetaclassTrait not. 	

	env := RGEnvironment new.
	definition := env ensureClassNamed: 'SomeClass class'.
	self assert: definition isClass not. 
	self assert: definition isMetaclass. 	
	self assert: definition isTrait not. 	
	self assert: definition isMetaclassTrait not. 	

