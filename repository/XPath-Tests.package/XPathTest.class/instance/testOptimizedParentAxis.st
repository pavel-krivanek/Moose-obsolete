tests
testOptimizedParentAxis
	| result |

	result := document xPath: '//*[parent::addressbook]'.
	self
		assertNodeSet: result
		hasNodes: (document allElementsNamed: 'person').
	result := document xPath: '//*[parent::absent]'.
	self assert: result isEmpty.

	result := textDocument xPath: '//text()[parent::b = "two"]'.
	self
		assertNodeSet: result
		hasNodes:
			(textDocument allNodesSelect: [:each |
				each isStringNode
					and: [(each parent isElementNamed: 'b')
						and: [each parent rawContentString = 'two']]]).
	result := textDocument xPath: '//text()[parent::b = "four"]'.
	self assert: result isEmpty.