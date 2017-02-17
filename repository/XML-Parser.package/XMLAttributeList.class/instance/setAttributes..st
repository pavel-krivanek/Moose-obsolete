initialization
setAttributes: anAssociationCollection
	self removeAll.
	anAssociationCollection associationsDo: [:each |
		self addAttributeAssociation: each].