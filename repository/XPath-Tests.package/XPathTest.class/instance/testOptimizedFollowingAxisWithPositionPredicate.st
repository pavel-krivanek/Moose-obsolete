tests
testOptimizedFollowingAxisWithPositionPredicate
	| result following |

	following :=
		XMLNodeList with:
			(document allElementsNamed: 'person') second.
	result := document xPath: '//person[1]/following::person[1]'.
	self
		assertNodeSet: result
		hasNodes: following.
	self
		assertNodeSet: result
		hasSortOrder: XPathDocumentSortOrder.
	result := document xPath: '//person[1]/following::person[1.0][1]'.
	self
		assertNodeSet: result
		hasNodes: following.
	self
		assertNodeSet: result
		hasSortOrder: XPathDocumentSortOrder.
	self
		assert: (document xPath: '//person[1]/following::person[0]') isEmpty;
		assert: (document xPath: '//person[1]/following::person[1.2]') isEmpty;
		assert: (document xPath: '//person[1]/following::person[1][2]') isEmpty.

	following :=
		XMLNodeList with:
			(document allElementsNamed: 'person') second firstElement.
	result := document xPath: '//person[1]/following::*[2]'.
	self
		assertNodeSet: result
		hasNodes: following.
	self
		assertNodeSet: result
		hasSortOrder: XPathDocumentSortOrder.
	result := document xPath: '//person[1]/following::*[2.0][1]'.
	self
		assertNodeSet: result
		hasNodes: following.
	self
		assertNodeSet: result
		hasSortOrder: XPathDocumentSortOrder.
	self
		assert: (document xPath: '//person[1]/following::*[0]') isEmpty;
		assert: (document xPath: '//person[1]/following::*[2.2]') isEmpty;
		assert: (document xPath: '//person[1]/following::*[2][2]') isEmpty.