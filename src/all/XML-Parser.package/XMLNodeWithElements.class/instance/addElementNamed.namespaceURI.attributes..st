adding
addElementNamed: aName namespaceURI: aURI attributes: anAssociationCollection
	"adds and returns a new element with the specified name, namespace URI
	and attributes"

	"added first to inherit the config and namespaces
	before setting the name, namespace URI, and attributes"
	^ (self addNode:
		(self nodeFactory
			classForElement: aName
			namespaceURI: aURI
			attributes: anAssociationCollection) new)
				name: aName namespaceURI: aURI;
				setAttributes: anAssociationCollection