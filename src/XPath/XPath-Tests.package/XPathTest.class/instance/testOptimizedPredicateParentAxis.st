tests
testOptimizedPredicateParentAxis
	| parents |

	parents := document allElementsNamed: 'person'.
	self
		assertNodeSet: (document xPath: '//*[parent::addressbook]')
		hasNodes: parents.
	self
		assertNodeSet: (document xPath: '//*[parent::addressbook[true()]]')
		hasNodes: parents.
	self
		assertNodeSet: (document xPath: '//*[./parent::addressbook]')
		hasNodes: parents.
	self
		assert: (document xPath: '//*[parent::absent]') isEmpty;
		assert: (document xPath: '//*[parent::addressbook[false()]]') isEmpty;
		assert: (document xPath: '//*[./parent::absent]') isEmpty.

	parents :=
		textDocument allNodesSelect: [:each |
			each isStringNode
				and: [(each parent isElementNamed: 'c')
					and: [each parent rawContentString = 'two']]].
	self
		assertNodeSet: (textDocument xPath: '//text()[parent::c = "two"]')
		hasNodes: parents.
	self
		assertNodeSet: (textDocument xPath: '//text()[parent::c[true()] = "two"]')
		hasNodes: parents.
	self
		assertNodeSet: (textDocument xPath: '//text()[./parent::c = "two"]')
		hasNodes: parents.
	self
		assert:
			(textDocument xPath: '//text()[parent::c = "absent"]') isEmpty;
		assert:
			(textDocument xPath: '//text()[parent::c[false()] = "two"]') isEmpty;
		assert:
			(textDocument xPath: '//text()[./parent::c = "absent"]') isEmpty.