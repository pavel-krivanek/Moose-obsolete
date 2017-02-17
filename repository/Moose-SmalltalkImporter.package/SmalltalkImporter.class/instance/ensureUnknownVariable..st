public-entity-creation
ensureUnknownVariable: name
	
	^globals
		at: name
		ifAbsent: [self createUnknownVariable: name]