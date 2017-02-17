namespacing
declareNamespaces: anAssociationCollection
	anAssociationCollection associationsDo: [:each |
		self
			declarePrefix: each key
			uri: each value]