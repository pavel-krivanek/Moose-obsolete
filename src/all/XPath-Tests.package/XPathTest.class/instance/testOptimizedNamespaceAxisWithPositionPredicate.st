tests
testOptimizedNamespaceAxisWithPositionPredicate
	| result namespaces |

	namespaces :=
		(namespacedDocument allElementsNamed: 'person')
			collect: [:element |
				element namespaceNodes detect: [:each | each name = 'ps']].
	result := namespacedDocument xpath: '//ps:person/namespace::ps[1]'.
	self
		assertNodeSet: result
		hasNodes: namespaces.
	result := namespacedDocument xpath: '//ps:person/namespace::ps[1]'.
	self
		assertNodeSet: result
		hasNodes: namespaces.
	self
		assert: (namespacedDocument xpath: '//ps:person/namespace::ps[0]') isEmpty;
		assert: (namespacedDocument xpath: '//ps:person/namespace::ps[1.2]') isEmpty;
		assert: (namespacedDocument xpath: '//ps:person/namespace::ps[1][2]') isEmpty.

	namespaces :=
		(namespacedDocument allElementsNamed: 'person')
			collect: [:each | each namespaceNodes second].
	result := namespacedDocument xpath: '//ps:person/namespace::*[2]'.
	self
		assertNodeSet: result
		hasNodes: namespaces.
	result := namespacedDocument xpath: '//ps:person/namespace::*[2.0][1]'.
	self
		assertNodeSet: result
		hasNodes: namespaces.
	self
		assert: (namespacedDocument xpath: '//ps:person/namespace::*[0]') isEmpty;
		assert: (namespacedDocument xpath: '//ps:person/namespace::*[2.2]') isEmpty;
		assert: (namespacedDocument xpath: '//ps:person/namespace::*[2][2]') isEmpty.