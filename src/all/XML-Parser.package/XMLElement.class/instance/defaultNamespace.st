namespacing
defaultNamespace
	^ self usesNamespaces "avoid lazy initializing the scope"
		ifTrue: [self namespaceScope defaultNamespace]
		ifFalse: ['']