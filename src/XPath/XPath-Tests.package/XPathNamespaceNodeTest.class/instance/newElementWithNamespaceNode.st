instance creation
newElementWithNamespaceNode
	^ self newElementWithAttributes
		declarePrefix: 'prefix'
		uri: 'prefixNS'