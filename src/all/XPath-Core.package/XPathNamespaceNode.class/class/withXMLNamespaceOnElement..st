instance creation
withXMLNamespaceOnElement: anElement
	^ self
		element: anElement
		name: 'xml'
		uri: XMLNamespaceScope xmlNamespaceURI