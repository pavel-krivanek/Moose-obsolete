private
newNamespaceScopeForAddedElement
	^ self usesNamespaces
		ifTrue: [self namespaceScope copy]
		ifFalse: [nil]