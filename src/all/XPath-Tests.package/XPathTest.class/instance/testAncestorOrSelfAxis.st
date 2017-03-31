tests
testAncestorOrSelfAxis
	| nodes |

	nodes := document allNodesSelect: [:each | each hasChildren not].
	self
		assertNodeSet:
			(XPath
				for: '//node() [ count( child::node() ) = 0]'
				in: document)
		hasNodes: nodes.

	nodes := document allNodes.
	self
		assertNodeSet:
			(XPath
				for: '//node( )[count(child::node( ))=0]/ancestor-or-self::node( )'
				in: document)
		hasNodes: nodes.

	nodes := (document allElementsNamed: 'person') allButLast.
	nodes addAll: nodes last ancestorNodes.
	self
		assertNodeSet:
			(XPath
				for: '//person[last()]/preceding-sibling::person/ancestor-or-self::node()'
				in: document)
		hasNodes: nodes.

	nodes removeAll.
	(document allElementsNamed: 'person') do: [:each |
		nodes
			addLast: each;
			addAll: each nodes].
	nodes addAll: nodes first ancestorNodes.
	self
		assertNodeSet: (XPath for: '*/person/node()/ancestor-or-self::node()' in: document)
		hasNodes: nodes.

	nodes
		removeAll;
		addLast: document root;
		addAll: (document allElementsNamed: 'person').
	self
		assertNodeSet: (XPath for: 'addressbook/person/ancestor-or-self::*' in: document)
		hasNodes: nodes.

	self
		assertNodeSet: (XPath for: 'addressbook/ancestor-or-self::*' in: document)
		hasNode: document root.
	self
		assertNodeSet: (XPath for: 'ancestor-or-self::node()' in: document)
		hasNode: document.