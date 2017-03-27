tests
testOptimizedPredicateSelfAxis
	| nodes |

	nodes := document allElementsNamed: 'person'.
	self
		assertNodeSet: (document xpath: '//*[self::person]')
		hasNodes: nodes.
	self
		assertNodeSet: (document xpath: '//*[self::person[true()]]')
		hasNodes: nodes.
	self
		assertNodeSet: (document xpath: '//*[./self::person]')
		hasNodes: nodes.
	self
		assert: (document xpath: '//*[self::absent]') isEmpty;
		assert: (document xpath: '//*[self::person[false()]]') isEmpty;
		assert: (document xpath: '//*[./self::absent]') isEmpty.

	nodes :=
		textDocument allNodesSelect: [:each |
			each isStringNode: 'two'].
	self
		assertNodeSet:
			(textDocument xpath: '//text()[self::text() = "two"]')
		hasNodes: nodes.
	self
		assertNodeSet:
			(textDocument xpath: '//text()[self::text()[true()] = "two"]')
		hasNodes: nodes.
	self
		assertNodeSet:
			(textDocument xpath: '//text()[./self::text() = "two"]')
		hasNodes: nodes.
	self
		assert: (document xpath: '//text()[self::text() = "absent"]') isEmpty;
		assert: (document xpath: '//text()[self::text()[false()] = "two"]') isEmpty;
		assert: (document xpath: '//text()[./self::text() = "absent"]') isEmpty.