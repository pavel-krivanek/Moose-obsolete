accessing
classForElement: aQualifiedName namespaceURI: aURI ifNone: aBlock
	^ self
		classForElement: aQualifiedName
		namespaceURI: aURI
		attributes: #()
		ifNone: aBlock