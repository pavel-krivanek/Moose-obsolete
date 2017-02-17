tests
testOptimizedPrecedingSiblingAxisWithPositionPredicate
	| result precedingSibling |

	precedingSibling :=
		XMLNodeList with:
			(document allElementsNamed: 'person') first.
	result := document xPath: '//person[2]/preceding-sibling::person[1]'.
	self
		assertNodeSet: result
		hasNodes: precedingSibling.
	self
		assertNodeSet: result
		hasSortOrder: XPathReverseDocumentSortOrder.
	result := document xPath: '//person[2]/preceding-sibling::person[1.0][1]'.
	self
		assertNodeSet: result
		hasNodes: precedingSibling.
	self
		assertNodeSet: result
		hasSortOrder: XPathReverseDocumentSortOrder.
	self
		assert: (document xPath: '//person[2]/preceding-sibling::person[0]') isEmpty;
		assert: (document xPath: '//person[2]/preceding-sibling::person[1.2]') isEmpty;
		assert: (document xPath: '//person[2]/preceding-sibling::person[1][2]') isEmpty.

	result := document xPath: '//person[3]/preceding-sibling::*[2]'.
	self
		assertNodeSet: result
		hasNodes: precedingSibling.
	self
		assertNodeSet: result
		hasSortOrder: XPathReverseDocumentSortOrder.
	result := document xPath: '//person[3]/preceding-sibling::*[2.0][1]'.
	self
		assertNodeSet: result
		hasNodes: precedingSibling.
	self
		assertNodeSet: result
		hasSortOrder: XPathReverseDocumentSortOrder.
	self
		assert: (document xPath: '//person[3]/preceding-sibling::*[0]') isEmpty;
		assert: (document xPath: '//person[3]/preceding-sibling::*[2.2]') isEmpty;
		assert: (document xPath: '//person[3]/preceding-sibling::*[2][2]') isEmpty.