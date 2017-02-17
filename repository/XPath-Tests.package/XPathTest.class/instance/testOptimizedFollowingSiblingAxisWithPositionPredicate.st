tests
testOptimizedFollowingSiblingAxisWithPositionPredicate
	| result followingSiblings |

	followingSiblings :=
		XMLNodeList with:
			(document allElementsNamed: 'person') second.
	result := document xPath: '//person[1]/following-sibling::person[1]'.
	self
		assertNodeSet: result
		hasNodes: followingSiblings.
	self
		assertNodeSet: result
		hasSortOrder: XPathDocumentSortOrder.
	result := document xPath: '//person[1]/following-sibling::person[1.0][1]'.
	self
		assertNodeSet: result
		hasNodes: followingSiblings.
	self
		assertNodeSet: result
		hasSortOrder: XPathDocumentSortOrder.
	self
		assert: (document xPath: '//person[1]/following-sibling::person[0]') isEmpty;
		assert: (document xPath: '//person[1]/following-sibling::person[1.2]') isEmpty;
		assert: (document xPath: '//person[1]/following-sibling::person[1][2]') isEmpty.

	followingSiblings :=
		XMLNodeList with:
			(document allElementsNamed: 'person') third.
	result := document xPath: '//person[1]/following-sibling::*[2]'.
	self
		assertNodeSet: result
		hasNodes: followingSiblings.
	self
		assertNodeSet: result
		hasSortOrder: XPathDocumentSortOrder.
	result := document xPath: '//person[1]/following-sibling::*[2.0][1]'.
	self
		assertNodeSet: result
		hasNodes: followingSiblings.
	self
		assertNodeSet: result
		hasSortOrder: XPathDocumentSortOrder.
	self
		assert: (document xPath: '//person[1]/following-sibling::*[0]') isEmpty;
		assert: (document xPath: '//person[1]/following-sibling::*[2.2]') isEmpty;
		assert: (document xPath: '//person[1]/following-sibling::*[2][2]') isEmpty.