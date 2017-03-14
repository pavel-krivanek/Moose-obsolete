public-entity-creation
ensureAttribute: name for: aClass 
	 
	^(self scopeOfClass: aClass) 
		at: (self nameForInstanceVariable: name class: aClass) 
		ifAbsent: [self createAttribute: name for: aClass]