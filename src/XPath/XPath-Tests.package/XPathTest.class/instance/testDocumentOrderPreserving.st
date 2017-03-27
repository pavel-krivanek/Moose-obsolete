tests
testDocumentOrderPreserving
	| expected result |

	expected := document allNodesSelect: [:each | each hasChildren].
	result := document xpath: 'descendant::node()/parent::node()[true()]'.
	self
		assertNodeSet: result
		hasNodes: expected.

	expected := document allNodes allButFirst.
	result := document xpath: 'descendant::node()/self::node()[true()]'.
	self
		assertNodeSet: result
		hasNodes: expected.

	expected removeAll.
	document allElementsDo: [:each | expected addAll: each attributeNodes].
	result := document xpath: 'descendant::*/@*[true()]'.
	self
		assertNodeSet: result
		hasNodes: expected.

	expected removeAll.
	namespacedDocument allElementsDo: [:each | expected addAll: each namespaceNodes].
	result := namespacedDocument xpath: 'descendant::*/namespace::*[true()]'.
	self
		assertNodeSet: result
		hasNodes: expected.