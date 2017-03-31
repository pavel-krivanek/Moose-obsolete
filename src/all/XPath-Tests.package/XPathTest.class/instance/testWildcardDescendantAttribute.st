tests
testWildcardDescendantAttribute
	| path results |
	path := XPath for: '//*/@city'.
	results := path in: document.
	self assert: results size = 4.
	self
		assertNodeSet: results
		hasNodes:
			((document allElementsSelect: [:each | each includesAttribute: 'city'])
				collect: [:each | each attributeNodeAt: 'city']).