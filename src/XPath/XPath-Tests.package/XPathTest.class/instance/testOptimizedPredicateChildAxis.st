tests
testOptimizedPredicateChildAxis
	| children |

	children := document allElementsNamed: 'person'.
	self
		assertNodeSet: (document xPath: '//*[address]')
		hasNodes: children.
	self
		assertNodeSet: (document xPath: '//*[address[true()]]')
		hasNodes: children.
	self
		assertNodeSet: (document xPath: '//*[./address]')
		hasNodes: children.
	self
		assert: (document xPath: '//*[absent]') isEmpty;
		assert: (document xPath: '//*[address[false()]]') isEmpty;
		assert: (document xPath: '//*[./absent]') isEmpty.

	children :=
		textDocument allElementsSelect: [:element |
			(element isNamed: 'b')
				and: [
					(element elementsAt: 'c') anySatisfy: [:each |
						each stringValue = 'two']]].
	self
		assertNodeSet: (textDocument xPath: '//b[c = "two"]')
		hasNodes: children.
	self
		assertNodeSet: (textDocument xPath: '//b[c[true()] = "two"]')
		hasNodes: children.
	self
		assertNodeSet: (textDocument xPath: '//b[./c = "two"]')
		hasNodes: children.
	self
		assert: (textDocument xPath: '//b[c = "absent"]') isEmpty;
		assert: (textDocument xPath: '//b[c[false()] = "two"]') isEmpty;
		assert: (textDocument xPath: '//b[./c = "absent"]') isEmpty.