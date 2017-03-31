tests
testDescendantOrSelfAxis
	self
		assertNodeSet: (XPath for: '//.' in: document)
		hasNodes: document allNodes.
	self
		assertNodeSet: (XPath for: '//./node()' in: document)
		hasNodes: document descendantNodes.
	self
		assertNodeSet: (XPath for: '// self :: node()' in: document)
		hasNodes: document allNodes.
	self
		assertNodeSet: (XPath for: '/ descendant-or-self ::node()' in: document)
		hasNodes: document allNodes.
	self
		assertNodeSet: (XPath for: '//*' in: document)
		hasNodes: document allElements.
	self
		assertNodeSet:
			(XPath for: '//comment()/descendant-or-self::comment()' in: document)
		hasNodes: (document allNodesSelect: [:each | each isComment]).
	self
		assertNodeSet:
			(XPath for: 'addressbook/person/descendant-or-self::element()' in: document)
		hasNodes: document root descendantElements.
	self
		assertNodeSet:
			(XPath for: 'addressbook/person/descendant-or-self::address' in: document)
		hasNodes: (document allElementsNamed: 'address').
	self
		assertNodeSet:
			(XPath
				for: 'addressbook/person[last()]/preceding-sibling::person/descendant-or-self::*'
				in: document)
		hasNodes: (document root descendantElements copyUpTo: document root lastElement).
	self
		assertNodeSet:
			(XPath
				for: 'addressbook/person/contact-info/comment()/descendant-or-self::node()'
				in: document)
		hasNodes: (document allNodesSelect: [:each | each isComment]).