tests
testEquals
	self
		assert: self newNamespaceScope = self newNamespaceScope;
		assert: self newNamespaceScopeWithNamespaces = self newNamespaceScopeWithNamespaces;
		deny: self newNamespaceScope = self newNamespaceScopeWithNamespaces;
		deny: self newNamespaceScopeWithNamespaces = self newNamespaceScope