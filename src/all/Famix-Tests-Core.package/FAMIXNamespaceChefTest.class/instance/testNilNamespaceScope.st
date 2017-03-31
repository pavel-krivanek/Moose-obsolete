tests
testNilNamespaceScope
	| namespace |
	namespace := FAMIXNamespace new.
	self assert: namespace namespaceScope == namespace