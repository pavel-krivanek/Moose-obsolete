tests
testOptimizedSelfAxis
	| result |

	result := document xPath: '//*[self::person]'.
	self
		assertNodeSet: result
		hasNodes: (document allElementsNamed: 'person').
	result := document xPath: '//*[self::absent]'.
	self assert: result isEmpty.

	result := textDocument xPath: '//text()[self::node() = "two"]'.
	self
		assertNodeSet: result
		hasNodes:
			(textDocument allNodesSelect: [:each |
				each isStringNode: 'two']).
	result := textDocument xPath: '//text()[self::node() = "four"]'.
	self assert: result isEmpty.