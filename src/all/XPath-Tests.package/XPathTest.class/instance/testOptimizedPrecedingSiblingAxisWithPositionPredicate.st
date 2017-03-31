tests
testOptimizedPrecedingSiblingAxisWithPositionPredicate
	| result precedingSibling |

	precedingSibling :=
		XMLNodeList with:
			(document allElementsNamed: 'person') first.
	result := document xpath: '//person[2]/preceding-sibling::person[1]'.
	self
		assertNodeSet: result
		hasNodes: precedingSibling.
	self
		assertNodeSet: result
		hasSortOrder: XPathLevelDocumentSortOrder.
	result := document xpath: '//person[2]/preceding-sibling::person[1.0][1]'.
	self
		assertNodeSet: result
		hasNodes: precedingSibling.
	self
		assertNodeSet: result
		hasSortOrder: XPathLevelDocumentSortOrder.
	self
		assert: (document xpath: '//person[2]/preceding-sibling::address[1]') isEmpty;
		assert: (document xpath: '//person[2]/preceding-sibling::person[0]') isEmpty;
		assert: (document xpath: '//person[2]/preceding-sibling::person[1.2]') isEmpty;
		assert: (document xpath: '//person[2]/preceding-sibling::person[1][2]') isEmpty.

	result := document xpath: '//person[3]/preceding-sibling::*[2]'.
	self
		assertNodeSet: result
		hasNodes: precedingSibling.
	self
		assertNodeSet: result
		hasSortOrder: XPathLevelDocumentSortOrder.
	result := document xpath: '//person[3]/preceding-sibling::*[2.0][1]'.
	self
		assertNodeSet: result
		hasNodes: precedingSibling.
	self
		assertNodeSet: result
		hasSortOrder: XPathLevelDocumentSortOrder.
	self
		assert: (document xpath: '//person[3]/preceding-sibling::*[0]') isEmpty;
		assert: (document xpath: '//person[3]/preceding-sibling::*[2.2]') isEmpty;
		assert: (document xpath: '//person[3]/preceding-sibling::*[2][2]') isEmpty.