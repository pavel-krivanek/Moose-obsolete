tests
testWildcardDescendantAttributeValue
	| path results |
	path := XPath for: ' // * [ @ city = "Los Angeles" ] '.
	results := path in: document.
	self assert: results size = 2.
	self
		assertNodeSet: results
		hasNodes:
			(document allElementsSelect: [:each |
				(each isNamed: 'address')
					and: [(each attributeAt: 'city') = 'Los Angeles']]).