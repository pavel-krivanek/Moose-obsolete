public-entity-creation
ensureMethod: aCompiledMethod 
	 
	^methods 
		at: aCompiledMethod 
		ifAbsent: [self createMethod: aCompiledMethod]