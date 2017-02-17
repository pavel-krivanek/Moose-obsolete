tests
testNamespaceScope
	| namespace globalVariable |
	namespace := FAMIXNamespace new.
	globalVariable := FAMIXGlobalVariable new parentScope: namespace.
	self assert: globalVariable namespaceScope equals: namespace