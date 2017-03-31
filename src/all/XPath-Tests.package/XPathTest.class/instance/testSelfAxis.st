tests
testSelfAxis
	self
		assertNodeSet: (XPath for: ' / self::node() ' in: document)
		hasNodes: (XMLNodeList with: document).
	self
		assertNodeSet: (XPath for: ' /*/person/self::* ' in: document)
		hasNodes: (document allElementsNamed: 'person').
	self
		assertNodeSet: (XPath for: ' /*/person/node()/self::node() ' in: document)
		hasNodes:
			(document allNodesSelect: [:each |
				each hasParent
					and: [each parent isElementNamed: 'person']]).

	self
		assertNodeSet:
			(XPath
				for: ' /*/person/self::node()[1][position() = 1][last() = 1] '
				in: document)
		hasNodes: (document allElementsNamed: 'person').
	self
		assert: (XPath for: ' /*/person/self::node()[2] ' in: document) isEmpty;
		assert: (XPath for: ' /*/person/self::node()[position() + 1] ' in: document) isEmpty.

	self
		assertNodeSet:
			(XPath
				for: 'self::node()[1][position() = 1][last() = 1]'
				in: document)
		hasNodes: (XMLNodeList with: document).
	self
		assert: (XPath for: 'self::node()[2]' in: document) isEmpty;
		assert: (XPath for: 'self::node()[position() + 1]' in: document) isEmpty.

	self
		assertNodeSet: (XPath for: ' //person[1]/attribute::node()/. ' in: document)
		hasNodes: (document findElementNamed: 'person') attributeNodes.
	self assert:
		(XPath
			for: ' //person[1]/attribute::node()/self::* '
			in: document) isEmpty.