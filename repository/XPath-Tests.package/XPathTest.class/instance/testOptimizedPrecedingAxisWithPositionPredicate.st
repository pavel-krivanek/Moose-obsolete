tests
testOptimizedPrecedingAxisWithPositionPredicate
	| result preceding |

	preceding :=
		XMLNodeList with:
			(document allElementsNamed: 'person') first.
	result := document xPath: '//person[2]/preceding::person[1]'.
	self
		assertNodeSet: result
		hasNodes: preceding.
	self
		assertNodeSet: result
		hasSortOrder: XPathReverseDocumentSortOrder.
	result := document xPath: '//person[2]/preceding::person[1.0][1]'.
	self
		assertNodeSet: result
		hasNodes: preceding.
	self
		assertNodeSet: result
		hasSortOrder: XPathReverseDocumentSortOrder.
	self
		assert: (document xPath: '//person[2]/preceding::person[0]') isEmpty;
		assert: (document xPath: '//person[2]/preceding::person[1.2]') isEmpty;
		assert: (document xPath: '//person[2]/preceding::person[1][2]') isEmpty.

	preceding :=
		XMLNodeList with:
			(document allElementsNamed: 'person')
				first allElements reversed second.
	result := document xPath: '//person[2]/preceding::*[2]'.
	self
		assertNodeSet: result
		hasNodes: preceding.
	self
		assertNodeSet: result
		hasSortOrder: XPathReverseDocumentSortOrder.
	result := document xPath: '//person[2]/preceding::*[2.0][1]'.
	self
		assertNodeSet: result
		hasNodes: preceding.
	self
		assertNodeSet: result
		hasSortOrder: XPathReverseDocumentSortOrder.
	self
		assert: (document xPath: '//person[2]/preceding::*[0]') isEmpty;
		assert: (document xPath: '//person[2]/preceding::*[2.2]') isEmpty;
		assert: (document xPath: '//person[2]/preceding::*[2][2]') isEmpty.