public-entity-creation
ensureAnnotationType: aPragmaNode
	 
	^annotationTypes 
		at: aPragmaNode selector
		ifAbsent: [self createAnnotationType: aPragmaNode]