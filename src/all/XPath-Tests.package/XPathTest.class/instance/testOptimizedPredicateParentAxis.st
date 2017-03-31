tests
testOptimizedPredicateParentAxis
	| parents |

	parents := document allElementsNamed: 'person'.
	self
		assertNodeSet: (document xpath: '//*[parent::addressbook]')
		hasNodes: parents.
	self
		assertNodeSet: (document xpath: '//*[parent::addressbook[true()]]')
		hasNodes: parents.
	self
		assertNodeSet: (document xpath: '//*[./parent::addressbook]')
		hasNodes: parents.
	self
		assert: (document xpath: '//*[parent::absent]') isEmpty;
		assert: (document xpath: '//*[parent::addressbook[false()]]') isEmpty;
		assert: (document xpath: '//*[./parent::absent]') isEmpty.

	parents :=
		textDocument allNodesSelect: [:each |
			each isStringNode
				and: [(each parent isElementNamed: 'c')
					and: [each parent rawContentString = 'two']]].
	self
		assertNodeSet: (textDocument xpath: '//text()[parent::c = "two"]')
		hasNodes: parents.
	self
		assertNodeSet: (textDocument xpath: '//text()[parent::c[true()] = "two"]')
		hasNodes: parents.
	self
		assertNodeSet: (textDocument xpath: '//text()[./parent::c = "two"]')
		hasNodes: parents.
	self
		assert:
			(textDocument xpath: '//text()[parent::c = "absent"]') isEmpty;
		assert:
			(textDocument xpath: '//text()[parent::c[false()] = "two"]') isEmpty;
		assert:
			(textDocument xpath: '//text()[./parent::c = "absent"]') isEmpty.