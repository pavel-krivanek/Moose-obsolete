tests
testOptimizedPredicateChildAxis
	| children |

	children := document allElementsNamed: 'person'.
	self
		assertNodeSet: (document xpath: '//*[address]')
		hasNodes: children.
	self
		assertNodeSet: (document xpath: '//*[address[true()]]')
		hasNodes: children.
	self
		assertNodeSet: (document xpath: '//*[./address]')
		hasNodes: children.
	self
		assert: (document xpath: '//*[absent]') isEmpty;
		assert: (document xpath: '//*[address[false()]]') isEmpty;
		assert: (document xpath: '//*[./absent]') isEmpty.

	children :=
		textDocument allElementsSelect: [:element |
			(element isNamed: 'b')
				and: [
					(element elementsAt: 'c') anySatisfy: [:each |
						each stringValue = 'two']]].
	self
		assertNodeSet: (textDocument xpath: '//b[c = "two"]')
		hasNodes: children.
	self
		assertNodeSet: (textDocument xpath: '//b[c[true()] = "two"]')
		hasNodes: children.
	self
		assertNodeSet: (textDocument xpath: '//b[./c = "two"]')
		hasNodes: children.
	self
		assert: (textDocument xpath: '//b[c = "absent"]') isEmpty;
		assert: (textDocument xpath: '//b[c[false()] = "two"]') isEmpty;
		assert: (textDocument xpath: '//b[./c = "absent"]') isEmpty.