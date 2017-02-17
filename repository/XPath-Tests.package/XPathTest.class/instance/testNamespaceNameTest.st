tests
testNamespaceNameTest
	self
		assertNodeSet: (document xPath: '//namespace::namespace( xml )')
		hasNodes: (document allElements collect: [:each | each namespaceNodes first]).

	self assert: (document xPath: '//namespace::namespace( undeclared )') isEmpty.