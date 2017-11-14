accessing
classForElement: aQualifiedName ifNone: aBlock
	^ self
		classForElement: aQualifiedName
		namespaceURI: ''
		attributes: XMLLazyAttributeDictionary  new
		ifNone: aBlock