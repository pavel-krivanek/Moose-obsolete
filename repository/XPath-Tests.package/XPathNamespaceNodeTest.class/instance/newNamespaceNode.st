instance creation
newNamespaceNode
	^ self nodeClass
		element: self newElementWithAttributes
		name: 'prefix'
		uri: 'prefixNS'