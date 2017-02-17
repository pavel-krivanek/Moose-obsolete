testing
hasNamespaces
	^ namespaceScope notNil
		and: [namespaceScope hasNamespaces]