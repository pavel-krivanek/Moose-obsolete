tests
testFileterExpressionPredicates
	self
		assertNodeSet:
			(document xpath: '(./addressbook/*)[position() <= 3 and position() > 1]')
		hasNodes: ((document allElementsNamed: 'person') copyFrom: 2 to: 3).
	self
		assertNodeSet: (document xpath: '(addressbook/*)[true()] / address')
		hasNodes: (document allElementsNamed: 'address').
	self
		assertNodeSet:
			(document xpath: '(addressbook)[true()] // email')
		hasNodes: (document allElementsNamed: 'email').
	self
		assertNodeSet: (document xpath: '(//person[position()>1])[position()<=2]')
		hasNodes: ((document allElementsNamed: 'person') copyFrom: 2 to: 3).