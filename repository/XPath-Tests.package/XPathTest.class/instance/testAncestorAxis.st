tests
testAncestorAxis
	| ancestors |

	ancestors := document allNodesSelect: [:each | each hasChildren].
	self
		assertNodeSet: (XPath for: '//ancestor::node()' in: document)
		hasNodes: ancestors.

	ancestors := ancestors select: [:ancestor |
		ancestor nodes anySatisfy: [:each | each hasChildren]].
	self
		assertNodeSet: (XPath for: '//ancestor::node()/ancestor::node()' in: document)
		hasNodes: ancestors.

	ancestors
		removeAll;
		addAll: (document allElementsNamed: 'person');
		addAll: ancestors last ancestorNodes.
	self
		assertNodeSet: (XPath for: '*/person/node()/ancestor::node()' in: document)
		hasNodes: ancestors.

	ancestors
		removeAll;
		addLast: document.
	self
		assertNodeSet: (XPath for: 'addressbook/ancestor::node()' in: document)
		hasNodes: ancestors.

	ancestors
		removeAll;
		addLast: document root.
	self
		assertNodeSet: (XPath for: 'addressbook/person/ancestor::*' in: document)
		hasNodes: ancestors.

	self
		assert: (XPath for: 'addressbook/ancestor::*' in: document) isEmpty;
		assert: (XPath for: 'ancestor::node()' in: document) isEmpty.