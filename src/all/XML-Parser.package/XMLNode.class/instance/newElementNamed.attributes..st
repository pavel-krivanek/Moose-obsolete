instance creation
newElementNamed: aName attributes: anAssociationCollection
	^ (self nodeFactory
		classForElement: aName
		attributes: anAssociationCollection) new
			configuration: self configuration;
			name: aName;
			setAttributes: anAssociationCollection