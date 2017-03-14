tests
testOptimizedParentAxisWithPositionPredicate
	| result parents |

	parents := document allElementsNamed: 'person'.
	result := document xPath: '//address/parent::person[1]'.
	self
		assertNodeSet: result
		hasNodes: parents.
	self
		assertNodeSet: result
		hasSortOrder: XPathDocumentSortOrder.
	result := document xPath: '//address/parent::person[1.0][1]'.
	self
		assertNodeSet: result
		hasNodes: parents.
	self
		assertNodeSet: result
		hasSortOrder: XPathDocumentSortOrder.
	self
		assert: (document xPath: '//address/parent::person[0]') isEmpty;
		assert: (document xPath: '//address/parent::person[1.2]') isEmpty;
		assert: (document xPath: '//address/parent::person[1][2]') isEmpty.

	result := document xPath: '//address/parent::*[1]'.
	self
		assertNodeSet: result
		hasNodes: parents.
	self
		assertNodeSet: result
		hasSortOrder: XPathDocumentSortOrder.
	result := document xPath: '//address/parent::*[1.0][1]'.
	self
		assertNodeSet: result
		hasNodes: parents.
	self
		assertNodeSet: result
		hasSortOrder: XPathDocumentSortOrder.
	self
		assert: (document xPath: '//address/parent::*[0]') isEmpty;
		assert: (document xPath: '//address/parent::*[1.2]') isEmpty;
		assert: (document xPath: '//address/parent::*[1][2]') isEmpty.