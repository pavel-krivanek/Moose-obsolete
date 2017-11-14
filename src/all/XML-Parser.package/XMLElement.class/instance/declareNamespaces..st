namespacing
declareNamespaces: anAssociationCollection
	self ensureUsesNamespaces.
	anAssociationCollection associationsDo: [:each |
		self
			declarePrefix: each key
			uri: each value]