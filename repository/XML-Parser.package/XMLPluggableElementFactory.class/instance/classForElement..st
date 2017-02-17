accessing
classForElement: aQualifiedName
	^ elementClassMapper
		classForElement: aQualifiedName
		ifNone: [self elementClass]