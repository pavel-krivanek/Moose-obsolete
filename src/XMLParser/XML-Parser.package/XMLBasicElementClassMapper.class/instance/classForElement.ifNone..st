accessing
classForElement: aQualifiedName ifNone: aBlock
	^ self
		classForElement: aQualifiedName
		namespaceURI: ''
		attributes: #()
		ifNone: aBlock