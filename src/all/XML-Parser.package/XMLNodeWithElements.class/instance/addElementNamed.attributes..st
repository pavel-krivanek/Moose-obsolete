adding
addElementNamed: aName attributes: anAssociationCollection
	"adds and returns a new element with the specified name and attributes"

	"added first to inherit the config and namespaces
	before setting the name and attributes"
	^ (self addNode:
		(self nodeFactory
			classForElement: aName
			attributes: anAssociationCollection) new)
				name: aName;
				setAttributes: anAssociationCollection