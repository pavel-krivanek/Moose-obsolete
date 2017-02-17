accessing
setRootElement: anElement currentScope: aNamespaceScope
	self elementNester setExternalRootElement: anElement.
	self usesNamespaces
		ifTrue: [self scopeAllocator currentScope: aNamespaceScope].