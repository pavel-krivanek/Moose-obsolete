tests
testReverseDocumentOrderPreserving
	| expected result |

	result :=
		document xpath:
			'addressbook/person[last()]/preceding-sibling::node()/parent::node()[true()]'.
	self
		assertNodeSet: result
		hasNode: document root.
	self
		assertNodeSet: result
		hasSortOrder: XPathLevelDocumentSortOrder.

	expected :=
		document root nodes copyUpTo:
			(document allElementsNamed: 'person') last.
	result :=
		document xpath:
			'addressbook/person[last()]/preceding-sibling::node()/self::node()[true()]'.
	self
		assertNodeSet: result
		hasNodes: expected.
	self
		assertNodeSet: result
		hasSortOrder: XPathLevelDocumentSortOrder.

	expected removeAll.
	(document allElementsNamed: 'person') allButLast do: [:each |
		expected addAll: each attributeNodes].
	result :=
		document xpath:
			'addressbook/person[last()]/preceding-sibling::node()/@*[true()]'.
	self
		assertNodeSet: result
		hasNodes: expected.
	self
		assertNodeSet: result
		hasSortOrder: XPathLevelDocumentSortOrder.

	expected removeAll.
	(namespacedDocument allElementsNamed: 'person') allButLast do: [:each |
		expected addAll: each namespaceNodes].
	result :=
		namespacedDocument xpath:
			'book:addressbook/ps:person[last()]/preceding-sibling::node()/namespace::*[true()]'.
	self
		assertNodeSet: result
		hasNodes: expected.
	self
		assertNodeSet: result
		hasSortOrder: XPathLevelDocumentSortOrder.