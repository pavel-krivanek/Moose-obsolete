tests
testOptimizedChildAxisWithPositionPredicate
	| result children |

	children :=
		XMLNodeList with:
			(document allElementsNamed: 'person') first.
	result := document xpath: 'addressbook/person[1]'.
	self
		assertNodeSet: result
		hasNodes: children.
	self
		assertNodeSet: result
		hasSortOrder: XPathLevelDocumentSortOrder.
	result := document xpath: 'addressbook/person[1.0][1]'.
	self
		assertNodeSet: result
		hasNodes: children.
	self
		assertNodeSet: result
		hasSortOrder: XPathLevelDocumentSortOrder.
	self
		assert: (document xpath: 'addressbook/person[0]') isEmpty;
		assert: (document xpath: 'addressbook/person[1.2]') isEmpty;
		assert: (document xpath: 'addressbook/person[1][2]') isEmpty.

	children :=
		XMLNodeList with:
			(document allElementsNamed: 'person') second.
	result := document xpath: 'addressbook/*[2]'.
	self
		assertNodeSet: result
		hasNodes: children.
	self
		assertNodeSet: result
		hasSortOrder: XPathLevelDocumentSortOrder.
	result := document xpath: 'addressbook/*[2.0][1]'.
	self
		assertNodeSet: result
		hasNodes: children.
	self
		assertNodeSet: result
		hasSortOrder: XPathLevelDocumentSortOrder.
	self
		assert: (document xpath: 'addressbook/*[0]') isEmpty;
		assert: (document xpath: 'addressbook/*[2.2]') isEmpty;
		assert: (document xpath: 'addressbook/*[2][2]') isEmpty.