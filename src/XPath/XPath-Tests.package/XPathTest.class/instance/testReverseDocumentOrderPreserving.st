tests
testReverseDocumentOrderPreserving
	| expected result |

	expected := document allNodes last ancestorNodes reversed.
	result :=
		document allNodes last xPath:
			'ancestor-or-self::node()/parent::node()[true()]'.
	self
		assert: result = expected;
		assertNodeSet: result hasSortOrder: XPathDocumentSortOrder.

	expected := document allNodes last ancestorNodes reversed.
	result :=
		document allNodes last xPath:
			'ancestor::node()/self::node()[true()]'.
	self
		assert: result = expected;
		assertNodeSet: result hasSortOrder: XPathDocumentSortOrder.

	expected removeAll.
	document allNodes last ancestorElements reverseDo: [:each |
		expected addAll: each attributeNodes].
	result := document allNodes last xPath: 'ancestor::*/@*[true()]'.
	self
		assert: result = expected;
		assertNodeSet: result hasSortOrder: XPathDocumentSortOrder.

	expected removeAll.
	document allNodes last ancestorElements reverseDo: [:each |
		expected addAll: each namespaceNodes].
	result := document allNodes last xPath: 'ancestor::*/namespace::*[true()]'.
	self
		assert: result = expected;
		assertNodeSet: result hasSortOrder: XPathDocumentSortOrder.