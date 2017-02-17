mapping
inheritMappingsFrom: anEnclosingScope
	anEnclosingScope hasNamespaces
		ifFalse: [^ self].
	self hasNamespaces
		ifTrue: [| copiedPrefixMappings |
			anEnclosingScope prefixesAndURIsDo: [:prefix :uri |
				(self includesPrefix: prefix)
					ifFalse: [
						"nil test ensures we only copy the first time when needed"
						(copiedPrefixMappings
							ifNil: [copiedPrefixMappings := self copiedPrefixMappings])
							at: prefix
							put: uri]]]
		ifFalse: [
			"can safely share anEnclosingScope's prefixMappings because of
			copy-on-write behavior"
			prefixMappings := anEnclosingScope prefixMappings].