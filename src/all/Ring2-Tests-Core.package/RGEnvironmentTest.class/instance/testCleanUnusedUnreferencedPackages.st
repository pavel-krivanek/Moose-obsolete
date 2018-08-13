tests
testCleanUnusedUnreferencedPackages

	| env package1 package2 | 
	
	env := RGEnvironment new.
	
	self assert: env ask packages isEmpty.
	env cleanUnusedUnreferencedPackages.
	self assert: env ask packages isEmpty.

	env ensurePackageNamed: #SomePackage.
	self assert: env ask packages size equals: 1.
	env cleanUnusedUnreferencedPackages.
	self assert: env ask packages isEmpty.
	
	(env ensureClassNamed: #SomeClass)
		package: (package1 := env ensurePackageNamed: #SomeUsedPackage).
	package2 := env ensurePackageNamed: #SomeUnusedPackage.
	self assert: (env ask packages includes: package1).  
	self assert: (env ask packages includes: package2).  
	env cleanUnusedUnreferencedPackages.
	self assert: (env ask packages includes: package1).  
	self deny: (env ask packages includes: package2).  
	