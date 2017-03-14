adding
addElementNamed: aName namespaceURI: aURI
	"adds and returns a new element with the specified name and namespace
	URI"

	"added first to inherit the config and namespaces
	before setting the name and namespace URI"
	^ (self addNode:
		(self nodeFactory
			classForElement: aName
			namespaceURI: aURI) new)
				name: aName
				namespaceURI: aURI