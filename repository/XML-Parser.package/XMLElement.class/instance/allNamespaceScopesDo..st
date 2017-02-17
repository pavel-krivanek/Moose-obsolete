private
allNamespaceScopesDo: aBlock
	self allElementsDo: [:each |
		aBlock value: each namespaceScope]