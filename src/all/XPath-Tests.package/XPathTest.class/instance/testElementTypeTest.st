tests
testElementTypeTest
	self
		assertNodeSet: (document xpath: '//element()')
		hasNodes: document allElements.
	self
		assertNodeSet: (document xpath: '//node()/self::element()')
		hasNodes: document allElements