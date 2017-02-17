tests
testDocumentOrderPreserving
	| expected result |

	expected := document allNodesSelect: [:each | each hasChildren].
	result := document xPath: 'descendant::node()/parent::node()[true()]'.
	self
		assert: result = expected;
		assertNodeSet: result hasSortOrder: XPathDocumentSortOrder.

	expected := document allNodes allButFirst.
	result := document xPath: 'descendant::node()/self::node()[true()]'.
	self
		assert: result = expected;
		assertNodeSet: result hasSortOrder: XPathDocumentSortOrder.

	expected removeAll.
	document allElementsDo: [:each | expected addAll: each attributeNodes].
	result := document xPath: 'descendant::*/@*[true()]'.
	self
		assert: result = expected;
		assertNodeSet: result hasSortOrder: XPathDocumentSortOrder.

	expected removeAll.
	namespacedDocument allElementsDo: [:each | expected addAll: each namespaceNodes].
	result := namespacedDocument xPath: 'descendant::*/namespace::*[true()]'.
	self
		assert: result = expected;
		assertNodeSet: result hasSortOrder: XPathDocumentSortOrder.