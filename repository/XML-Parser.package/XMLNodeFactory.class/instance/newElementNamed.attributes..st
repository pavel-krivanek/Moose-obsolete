instance creation
newElementNamed: aName attributes: anAssociationCollection
	^ (self
		classForElement: aName
		attributes: anAssociationCollection)
			name: aName
			attributes: anAssociationCollection