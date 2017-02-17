accessing
classForElement: aQualifiedName attributes: anAssociationCollection
	^ self
		classForElement: aQualifiedName
		attributes: anAssociationCollection
		ifNone: [nil]