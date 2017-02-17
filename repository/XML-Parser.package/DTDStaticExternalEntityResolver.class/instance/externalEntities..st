accessing
externalEntities: anAssociationCollection
	self hasExternalEntities
		ifTrue: [self removeExternalEntities].
	anAssociationCollection associationsDo: [:each |
		self
			externalEntityAtURI: each key
			put: each value].