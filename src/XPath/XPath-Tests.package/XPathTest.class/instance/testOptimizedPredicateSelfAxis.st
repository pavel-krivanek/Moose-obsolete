tests
testOptimizedPredicateSelfAxis
	| nodes |

	nodes := document allElementsNamed: 'person'.
	self
		assertNodeSet: (document xPath: '//*[self::person]')
		hasNodes: nodes.
	self
		assertNodeSet: (document xPath: '//*[self::person[true()]]')
		hasNodes: nodes.
	self
		assertNodeSet: (document xPath: '//*[./self::person]')
		hasNodes: nodes.
	self
		assert: (document xPath: '//*[self::absent]') isEmpty;
		assert: (document xPath: '//*[self::person[false()]]') isEmpty;
		assert: (document xPath: '//*[./self::absent]') isEmpty.

	nodes :=
		textDocument allNodesSelect: [:each |
			each isStringNode: 'two'].
	self
		assertNodeSet:
			(textDocument xPath: '//text()[self::text() = "two"]')
		hasNodes: nodes.
	self
		assertNodeSet:
			(textDocument xPath: '//text()[self::text()[true()] = "two"]')
		hasNodes: nodes.
	self
		assertNodeSet:
			(textDocument xPath: '//text()[./self::text() = "two"]')
		hasNodes: nodes.
	self
		assert: (document xPath: '//text()[self::text() = "absent"]') isEmpty;
		assert: (document xPath: '//text()[self::text()[false()] = "two"]') isEmpty;
		assert: (document xPath: '//text()[./self::text() = "absent"]') isEmpty.