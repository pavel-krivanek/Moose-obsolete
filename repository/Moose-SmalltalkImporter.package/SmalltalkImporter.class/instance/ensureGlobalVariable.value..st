public-entity-creation
ensureGlobalVariable: name value: value 
	 
	^globals 
		at: name 
		ifAbsent: [self createGlobalVariable: name value: value]