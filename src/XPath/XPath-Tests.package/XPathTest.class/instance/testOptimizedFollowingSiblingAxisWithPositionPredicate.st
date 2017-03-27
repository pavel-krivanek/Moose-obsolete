tests
testOptimizedFollowingSiblingAxisWithPositionPredicate
	| result followingSiblings |

	followingSiblings :=
		XMLNodeList with:
			(document allElementsNamed: 'person') second.
	result := document xpath: '//person[1]/following-sibling::person[1]'.
	self
		assertNodeSet: result
		hasNodes: followingSiblings.
	self
		assertNodeSet: result
		hasSortOrder: XPathLevelDocumentSortOrder.
	result := document xpath: '//person[1]/following-sibling::person[1.0][1]'.
	self
		assertNodeSet: result
		hasNodes: followingSiblings.
	self
		assertNodeSet: result
		hasSortOrder: XPathLevelDocumentSortOrder.
	self
		assert: (document xpath: '//person[1]/following-sibling::address[1]') isEmpty;
		assert: (document xpath: '//person[1]/following-sibling::person[0]') isEmpty;
		assert: (document xpath: '//person[1]/following-sibling::person[1.2]') isEmpty;
		assert: (document xpath: '//person[1]/following-sibling::person[1][2]') isEmpty.

	followingSiblings :=
		XMLNodeList with:
			(document allElementsNamed: 'person') third.
	result := document xpath: '//person[1]/following-sibling::*[2]'.
	self
		assertNodeSet: result
		hasNodes: followingSiblings.
	self
		assertNodeSet: result
		hasSortOrder: XPathLevelDocumentSortOrder.
	result := document xpath: '//person[1]/following-sibling::*[2.0][1]'.
	self
		assertNodeSet: result
		hasNodes: followingSiblings.
	self
		assertNodeSet: result
		hasSortOrder: XPathLevelDocumentSortOrder.
	self
		assert: (document xpath: '//person[1]/following-sibling::*[0]') isEmpty;
		assert: (document xpath: '//person[1]/following-sibling::*[2.2]') isEmpty;
		assert: (document xpath: '//person[1]/following-sibling::*[2][2]') isEmpty.