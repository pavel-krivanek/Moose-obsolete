accessing
classForElement: aQualifiedName attributes: anAssociationCollection ifNone: aBlock
	^ self
		classForElement: aQualifiedName
		namespaceURI: ''
		attributes: anAssociationCollection
		ifNone: aBlock