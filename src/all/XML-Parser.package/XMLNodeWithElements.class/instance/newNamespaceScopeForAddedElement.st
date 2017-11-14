private
newNamespaceScopeForAddedElement
	^ self usesNamespaces
		ifTrue: [XMLNamespaceScope new]
		ifFalse: [nil]