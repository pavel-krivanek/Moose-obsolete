private
newNamespaceScopeForAddedElementNamed: aName namespaceURI: aURI
	self ensureUsesNamespaces.

	^ self newNamespaceScopeForAddedElement
		mapPrefix: aName xmlPrefixBeforeLocalName to: aURI;
		yourself.