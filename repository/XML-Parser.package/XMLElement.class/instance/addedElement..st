private
addedElement: anElement
	(self hasNamespaces
		and: [self namespaceScope ~= anElement namespaceScope])
		ifTrue: [
			anElement allNamespaceScopesDo: [:each |
				each inheritMappingsFrom: self namespaceScope]]