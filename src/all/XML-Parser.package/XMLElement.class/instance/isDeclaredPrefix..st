testing
isDeclaredPrefix: aPrefix
	"is the namespace prefix aPrefix declared for the receiver and its descendants?"

	^ self usesNamespaces
		and: [self namespaceScope includesPrefix: aPrefix]