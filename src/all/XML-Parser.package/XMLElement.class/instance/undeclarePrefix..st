namespacing
undeclarePrefix: aPrefix
	| currentNamespaceURI |

	self ensureUsesNamespaces.
	currentNamespaceURI :=
		self namespaceScope
			prefixMappingAt: aPrefix
			ifAbsent: [^ self].
	self
		allNamespaceScopesWithValidationDo: [:scope |
			scope unmapPrefix: aPrefix]
		whileTrue: [:scope |
			scope
				includesPrefix: aPrefix
				mappedTo: currentNamespaceURI].