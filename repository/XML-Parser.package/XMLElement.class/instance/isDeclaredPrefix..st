testing
isDeclaredPrefix: aPrefix
	"is the namespace prefix aPrefix declared for the receiver and its descendants?"

	^ self namespaceScope includesPrefix: aPrefix