instance creation
name: aQualifiedName namespaceURI: aURI attributes: anAssociationCollection
	"Returns a new element with the specified name, namespace URI, and attributes.

	If aQualifiedName has a prefix, then aURI must be non-empty and the prefix
	will be bound to it. Otherwise aURI will be declared as the default namespace.
	If the attributes are prefixed, then aQualifiedName must have the same prefix
	or a namespace exception will be thrown.

	The anAssociationCollection argument can be a dictionary or any collection
	of associations."

	^ (self
		name: aQualifiedName
		namespaceURI: aURI)
			setAttributes: anAssociationCollection