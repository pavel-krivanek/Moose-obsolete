adding
addElementNamed: aName attributes: anAssociationCollection
	"added first to inherit the config and namespaces before setting the name
	and attributes"
	^ (self addNode:
		(self nodeFactory
			classForElement: aName
			namespaceURI: (self resolvePrefix: aName xmlPrefixBeforeLocalName)
			attributes: anAssociationCollection) new)
				name: aName;
				setAttributes: anAssociationCollection