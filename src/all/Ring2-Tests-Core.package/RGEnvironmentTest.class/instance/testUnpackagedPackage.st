tests
testUnpackagedPackage

	| env package | 
	
	env := RGEnvironment new.
	self assert: env unpackagedPackageOrNil equals: nil.
	package := env ensurePackageNamed: '_UnpackagedPackage'.
	
	self assert: env unpackagedPackageOrNil equals: package.
	
	