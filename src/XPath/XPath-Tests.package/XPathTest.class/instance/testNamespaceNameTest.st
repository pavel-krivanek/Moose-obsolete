tests
testNamespaceNameTest
	self
		assertNodeSet: (document xpath: '//namespace::namespace( xml )')
		hasNodes: (document allElements collect: [:each | each namespaceNodes first]).

	self assert: (document xpath: '//namespace::namespace( undeclared )') isEmpty.