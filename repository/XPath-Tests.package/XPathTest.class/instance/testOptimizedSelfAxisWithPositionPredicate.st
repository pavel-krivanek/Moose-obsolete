tests
testOptimizedSelfAxisWithPositionPredicate
	| result nodes |

	nodes := document allElementsNamed: 'person'.
	result := document xPath: '//person/self::person[1]'.
	self
		assertNodeSet: result
		hasNodes: nodes.
	self
		assertNodeSet: result
		hasSortOrder: XPathDocumentSortOrder.
	result := document xPath: '//person/self::person[1.0][1]'.
	self
		assertNodeSet: result
		hasNodes: nodes.
	self
		assertNodeSet: result
		hasSortOrder: XPathDocumentSortOrder.
	self
		assert: (document xPath: '//person/self::person[0]') isEmpty;
		assert: (document xPath: '//person/self::person[1.1]') isEmpty;
		assert: (document xPath: '//person/self::person[1][2]') isEmpty.

	result := document xPath: '//person/self::*[1]'.
	self
		assertNodeSet: result
		hasNodes: nodes.
	self
		assertNodeSet: result
		hasSortOrder: XPathDocumentSortOrder.
	result := document xPath: '//person/self::*[1.0][1]'.
	self
		assertNodeSet: result
		hasNodes: nodes.
	self
		assertNodeSet: result
		hasSortOrder: XPathDocumentSortOrder.
	self
		assert: (document xPath: '//person/self::*[0]') isEmpty;
		assert: (document xPath: '//person/self::*[1.2]') isEmpty;
		assert: (document xPath: '//person/self::*[1][2]') isEmpty.