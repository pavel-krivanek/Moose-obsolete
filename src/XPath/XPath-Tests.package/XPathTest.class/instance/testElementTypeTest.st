tests
testElementTypeTest
	self
		assertNodeSet: (document xPath: '//element()')
		hasNodes: document allElements.
	self
		assertNodeSet: (document xPath: '//node()/self::element()')
		hasNodes: document allElements