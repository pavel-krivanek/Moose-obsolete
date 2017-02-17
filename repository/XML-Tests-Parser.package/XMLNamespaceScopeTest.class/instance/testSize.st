tests
testSize
	self
		assert: self newNamespaceScope size = 0;
		assert: self newNamespaceScopeWithNamespaces size = self namespaces size