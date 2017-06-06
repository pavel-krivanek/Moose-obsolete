tests
testNamespaceScope
	| namespace globalVariable |
	namespace := FAMIXNamespace new.
	globalVariable := self actualClass new parentScope: namespace.
	self assert: globalVariable namespaceScope equals: namespace