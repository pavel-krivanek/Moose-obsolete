tests
testOptimizedDescendantOrSelfAxisWithPositionPredicate
	| result nodes |

	nodes :=
		XMLNodeList with:
			(document allElementsNamed: 'person') first.
	result := document xPath: 'descendant-or-self::person[1]'.
	self
		assertNodeSet: result
		hasNodes: nodes.
	self
		assertNodeSet: result
		hasSortOrder: XPathDocumentSortOrder.
	result := document xPath: 'descendant-or-self::person[1.0][1]'.
	self
		assertNodeSet: result
		hasNodes: nodes.
	self
		assertNodeSet: result
		hasSortOrder: XPathDocumentSortOrder.
	self
		assert: (document xPath: 'descendant-or-self::person[0]') isEmpty;
		assert: (document xPath: 'descendant-or-self::person[1.2]') isEmpty;
		assert: (document xPath: 'descendant-or-self::person[1][2]') isEmpty.

	nodes :=
		XMLNodeList with:
			document allElements second.
	result := document xPath: 'descendant-or-self::*[2]'.
	self
		assertNodeSet: result
		hasNodes: nodes.
	self
		assertNodeSet: result
		hasSortOrder: XPathDocumentSortOrder.
	result := document xPath: 'descendant-or-self::*[2.0][1]'.
	self
		assertNodeSet: result
		hasNodes: nodes.
	self
		assertNodeSet: result
		hasSortOrder: XPathDocumentSortOrder.
	self
		assert: (document xPath: 'descendant-or-self::*[0]') isEmpty;
		assert: (document xPath: 'descendant-or-self::*[2.2]') isEmpty;
		assert: (document xPath: 'descendant-or-self::*[2][2]') isEmpty.