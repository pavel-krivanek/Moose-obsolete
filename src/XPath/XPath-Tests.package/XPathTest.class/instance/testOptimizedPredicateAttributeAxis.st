tests
testOptimizedPredicateAttributeAxis
	| attributes |

	attributes :=
		document allElementsSelect: [:each |
			(each isNamed: 'address')
				and: [(each attributeAt: 'city') notEmpty]].
	self
		assertNodeSet: (document xPath: '//address[@city]')
		hasNodes: attributes.
	self
		assertNodeSet: (document xPath: '//address[@city[true()]]')
		hasNodes: attributes.
	self
		assertNodeSet: (document xPath: '//address[./@city]')
		hasNodes: attributes.
	self
		assert: (document xPath: '//address[@absent]') isEmpty;
		assert: (document xPath: '//address[@city[false()]]') isEmpty;
		assert: (document xPath: '//address[./@absent]') isEmpty.

	attributes :=
		document allElementsSelect: [:each |
			(each isNamed: 'address')
				and: [each hasAttributes
					and: [(each attributeAt: 'city') = 'New York']]].
	self
		assertNodeSet: (document xPath: '//address[@city = "New York"]')
		hasNodes: attributes.
	self
		assertNodeSet: (document xPath: '//address[@city[true()] = "New York"]')
		hasNodes: attributes.
	self
		assertNodeSet: (document xPath: '//address[./@city = "New York"]')
		hasNodes: attributes.
	self
		assert: (document xPath: '//address[@city = "Absent"]') isEmpty;
		assert: (document xPath: '//address[@city[false()] = "New York"]') isEmpty;
		assert: (document xPath: '//address[./@city = "Absent"]') isEmpty.