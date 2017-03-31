accessing
classForElement: aQualifiedName attributes: anAssociationCollection
	^ elementClassMapper
		classForElement: aQualifiedName
		attributes: anAssociationCollection
		ifNone: [self elementClass]