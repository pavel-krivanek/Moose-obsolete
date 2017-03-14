tests
testFileterExpressionPredicates
	self
		assertNodeSet:
			(document xPath: '(./addressbook/*)[position() <= 3 and position() > 1]')
		hasNodes: ((document allElementsNamed: 'person') copyFrom: 2 to: 3).
	self
		assertNodeSet: (document xPath: '(addressbook/*)[true()] / address')
		hasNodes: (document allElementsNamed: 'address').
	self
		assertNodeSet:
			(document xPath: '(addressbook)[true()] // email')
		hasNodes: (document allElementsNamed: 'email').
	self
		assertNodeSet: (document xPath: '(//person[position()>1])[position()<=2]')
		hasNodes: ((document allElementsNamed: 'person') copyFrom: 2 to: 3).