instance creation
name: aQualifiedName namespaceURI: aURI
	"Returns a new element with the specified name and namespace URI.

	If aQualifiedName has a prefix, then aURI must be non-empty and the prefix
	will be bound to it. Otherwise aURI will be declared as the default namespace."

	^ self new
		name: aQualifiedName
		namespaceURI: aURI