tests
testOptimizedDescendantAxisWithPositionPredicate
	| result descendants |

	descendants :=
		XMLNodeList with:
			(document allElementsNamed: 'person') first.
	result := document xPath: 'descendant::person[1]'.
	self
		assertNodeSet: result
		hasNodes: descendants.
	self
		assertNodeSet: result
		hasSortOrder: XPathDocumentSortOrder.
	result := document xPath: 'descendant::person[1.0][1]'.
	self
		assertNodeSet: result
		hasNodes: descendants.
	self
		assertNodeSet: result
		hasSortOrder: XPathDocumentSortOrder.
	self
		assert: (document xPath: 'descendant::person[0]') isEmpty;
		assert: (document xPath: 'descendant::person[1.2]') isEmpty;
		assert: (document xPath: 'descendant::person[1][2]') isEmpty.

	descendants :=
		XMLNodeList with:
			document descendantElements second.
	result := document xPath: 'descendant::*[2]'.
	self
		assertNodeSet: result
		hasNodes: descendants.
	self
		assertNodeSet: result
		hasSortOrder: XPathDocumentSortOrder.
	result := document xPath: 'descendant::*[2.0][1]'.
	self
		assertNodeSet: result
		hasNodes: descendants.
	self
		assertNodeSet: result
		hasSortOrder: XPathDocumentSortOrder.
	self
		assert: (document xPath: 'descendant::*[0]') isEmpty;
		assert: (document xPath: 'descendant::*[2.2]') isEmpty;
		assert: (document xPath: 'descendant::*[2][2]') isEmpty.