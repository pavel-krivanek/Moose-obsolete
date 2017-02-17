tests
testDocumentOrderLosing
	| expected result |

	expected := document allNodesSelect: [:each | each hasChildren].
	result := document xPath: 'descendant::node()/ancestor::node()'.
	self
		assertNodeSet: result hasNodes: expected;
		assertNodeSet: result hasSortOrder: XPathUnknownSortOrder.

	expected := document allNodes.
	result := document xPath: 'descendant::node()/ancestor-or-self::node()'.
	self
		assertNodeSet: result hasNodes: expected;
		assertNodeSet: result hasSortOrder: XPathUnknownSortOrder.

	expected := document root descendantNodesSelect: [:each | each previousNode isNil].
	result := document xPath: 'descendant::node()/descendant::node()[1]'.
	self
		assertNodeSet: result hasNodes: expected;
		assertNodeSet: result hasSortOrder: XPathUnknownSortOrder.

	expected removeAll.
	document descendantNodesDo: [:each |
		each hasChildren
			ifTrue: [expected add: each firstNode]].
	result := document xPath: 'descendant::node()/descendant-or-self::node()[2]'.
	self
		assertNodeSet: result hasNodes: expected;
		assertNodeSet: result hasSortOrder: XPathUnknownSortOrder.

	expected := document root descendantNodesSelect: [:each | each hasParent].
	result := document xPath: 'descendant::node()/node()'.
	self
		assertNodeSet: result hasNodes: expected;
		assertNodeSet: result hasSortOrder: XPathUnknownSortOrder.

	expected := self newNodeSet.
	document descendantNodesDo: [:node |
		node followingSiblingNodesDo: [:each |
			expected addIfNotPresent: each]].
	result := document xPath: 'descendant::node()/following-sibling::node()'.
	self
		assertNodeSet: result hasNodes: expected;
		assertNodeSet: result hasSortOrder: XPathUnknownSortOrder.

	expected removeAll.
	document descendantNodesDo: [:node |
		node followingNodesDo: [:each |
			expected addIfNotPresent: each]].
	result := document xPath: '/descendant::node()/following::node()'.
	self
		assertNodeSet: result hasNodes: expected;
		assertNodeSet: result hasSortOrder: XPathUnknownSortOrder.

	expected removeAll.
	document descendantNodesDo: [:node |
		node precedingSiblingNodesDo: [:each |
			expected addIfNotPresent: each]].
	result := document xPath: 'descendant::node()/preceding-sibling::node()'.
	self
		assertNodeSet: result hasNodes: expected;
		assertNodeSet: result hasSortOrder: XPathUnknownSortOrder.


	expected removeAll.
	document descendantNodesDo: [:node |
		node precedingNodesDo: [:each |
			expected addIfNotPresent: each]].
	result := document xPath: 'descendant::node()/preceding::node()'.
	self
		assertNodeSet: result hasNodes: expected;
		assertNodeSet: result hasSortOrder: XPathUnknownSortOrder.