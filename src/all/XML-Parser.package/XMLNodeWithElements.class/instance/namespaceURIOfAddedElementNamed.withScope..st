private
namespaceURIOfAddedElementNamed: aName withScope: aNamespaceScope
	^ self usesNamespaces
		ifTrue: [aNamespaceScope resolvePrefix: aName xmlPrefixBeforeLocalName]
		ifFalse: ['']