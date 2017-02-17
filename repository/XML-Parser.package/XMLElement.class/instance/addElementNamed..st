adding
addElementNamed: aName
	"added first to inherit the config and namespaces before setting the name"
	^ (self addNode: 
		(self nodeFactory
			classForElement: aName
			namespaceURI: (self resolvePrefix: aName xmlPrefixBeforeLocalName)) new)
				name: aName