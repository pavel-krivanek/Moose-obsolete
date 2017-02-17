tests
testOptimizedChildAxis
	| result |

	result := document xPath: '//*[child::text()]'.
	self
		assertNodeSet: result
		hasNodes: (document allElementsSelect: [:each | each hasStringNodes]).
	result := document xPath: '//*[self::processing-instruction()]'.
	self assert: result isEmpty.

	result := textDocument xPath: '//*[child::node() = "two"]'.
	self
		assertNodeSet: result
		hasNodes:
			(textDocument allNodesSelect: [:node |
				node isElement
					and: [
						(node nodesDetect: [:each |
							each rawContentString = 'two']) notNil]]).
	result := textDocument xPath: '//*[child::node() = "four"]'.
	self assert: result isEmpty.