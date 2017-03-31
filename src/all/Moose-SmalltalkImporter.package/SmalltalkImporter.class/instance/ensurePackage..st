public-entity-creation
ensurePackage: aPackageModel 
	 
	^packages 
		at: aPackageModel 
		ifAbsent: [self createPackage: aPackageModel]