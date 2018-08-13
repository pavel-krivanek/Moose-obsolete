tests
testPackageNamed

	| env package | 
	
	env := RGEnvironment new.
	package := env ensurePackageNamed: 'SomePackage'.
	self assert: (env ask packageNamed: 'SomePackage') equals: package.
	
	env := RGEnvironment new.
	self assert: (env ask packageNamed: 'SomePackage') equals: nil.