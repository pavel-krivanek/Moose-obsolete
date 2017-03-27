tests
testOptimizedPredicateAttributeAxis
	| attributes |

	attributes :=
		document allElementsSelect: [:each |
			(each isNamed: 'address')
				and: [(each attributeAt: 'city') notEmpty]].
	self
		assertNodeSet: (document xpath: '//address[@city]')
		hasNodes: attributes.
	self
		assertNodeSet: (document xpath: '//address[@city[true()]]')
		hasNodes: attributes.
	self
		assertNodeSet: (document xpath: '//address[./@city]')
		hasNodes: attributes.
	self
		assert: (document xpath: '//address[@absent]') isEmpty;
		assert: (document xpath: '//address[@city[false()]]') isEmpty;
		assert: (document xpath: '//address[./@absent]') isEmpty.

	attributes :=
		document allElementsSelect: [:each |
			(each isNamed: 'address')
				and: [each hasAttributes
					and: [(each attributeAt: 'city') = 'New York']]].
	self
		assertNodeSet: (document xpath: '//address[@city = "New York"]')
		hasNodes: attributes.
	self
		assertNodeSet: (document xpath: '//address[@city[true()] = "New York"]')
		hasNodes: attributes.
	self
		assertNodeSet: (document xpath: '//address[./@city = "New York"]')
		hasNodes: attributes.
	self
		assert: (document xpath: '//address[@city = "Absent"]') isEmpty;
		assert: (document xpath: '//address[@city[false()] = "New York"]') isEmpty;
		assert: (document xpath: '//address[./@city = "Absent"]') isEmpty.