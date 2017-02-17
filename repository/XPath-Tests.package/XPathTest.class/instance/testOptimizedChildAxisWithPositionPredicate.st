tests
testOptimizedChildAxisWithPositionPredicate
	| result children |

	children :=
		XMLNodeList with:
			(document allElementsNamed: 'person') first.
	result := document xPath: 'addressbook/person[1]'.
	self
		assertNodeSet: result
		hasNodes: children.
	self
		assertNodeSet: result
		hasSortOrder: XPathDocumentSortOrder.
	result := document xPath: 'addressbook/person[1.0][1]'.
	self
		assertNodeSet: result
		hasNodes: children.
	self
		assertNodeSet: result
		hasSortOrder: XPathDocumentSortOrder.
	self
		assert: (document xPath: 'addressbook/person[0]') isEmpty;
		assert: (document xPath: 'addressbook/person[1.2]') isEmpty;
		assert: (document xPath: 'addressbook/person[1][2]') isEmpty.

	children :=
		XMLNodeList with:
			(document allElementsNamed: 'person') second.
	result := document xPath: 'addressbook/*[2]'.
	self
		assertNodeSet: result
		hasNodes: children.
	self
		assertNodeSet: result
		hasSortOrder: XPathDocumentSortOrder.
	result := document xPath: 'addressbook/*[2.0][1]'.
	self
		assertNodeSet: result
		hasNodes: children.
	self
		assertNodeSet: result
		hasSortOrder: XPathDocumentSortOrder.
	self
		assert: (document xPath: 'addressbook/*[0]') isEmpty;
		assert: (document xPath: 'addressbook/*[2.2]') isEmpty;
		assert: (document xPath: 'addressbook/*[2][2]') isEmpty.