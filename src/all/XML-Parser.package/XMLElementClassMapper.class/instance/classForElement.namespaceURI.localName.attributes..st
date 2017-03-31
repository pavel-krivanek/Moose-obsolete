accessing
classForElement: aQualifiedName namespaceURI: aURI localName: aLocalName attributes: anAssociationCollection
	^ self
		classForElement: aQualifiedName
		namespaceURI: aURI
		localName: aLocalName
		attributes: anAssociationCollection
		ifNone: [nil]