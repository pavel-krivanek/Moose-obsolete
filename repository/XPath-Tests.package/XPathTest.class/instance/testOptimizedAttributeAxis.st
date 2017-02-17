tests
testOptimizedAttributeAxis
	| result |

	result := document xPath: '//address[@city]'.
	self
		assertNodeSet: result
		hasNodes:
			(document allElementsSelect: [:each |
				(each isNamed: 'address')
					and: [(each attributeAt: 'city') notEmpty]]).
	result := document xPath: '//address[@absent]'.
	self assert: result isEmpty.

	result := document xPath: '//address[@city = "New York"]'.
	self
		assertNodeSet: result
		hasNodes:
			(document allElementsSelect: [:each |
				(each isNamed: 'address')
					and: [each hasAttributes
						and: [(each attributeAt: 'city') = 'New York']]]).
	result := document xPath: '//address[@city = "Absent"]'.
	self assert: result isEmpty.

	result := document xPath: 'addressbook/person[1]/@node()'.
	self
		assertNodeSet: result
		hasNodes: (document findElementNamed: 'person') attributeNodes.