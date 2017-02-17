tests
testFollowingAxis
	| persons following |

	persons := document allElementsNamed: 'person'.
	following := self newNodeSet.
	persons first followingNodesDo: [:each |
		following addLast: each].
	self
		assertNodeSet:
			(XPath
				for: 'addressbook/person/following::node()'
				in: document)
		hasNodes: following.

	following removeAll.
	persons do: [:person |
		 person firstNode followingNodesDo: [:each |
			following add: each]].
	self
		assertNodeSet:
			(XPath
				for: 'addressbook/person/node()/following::node()'
				in: document)
		hasNodes: following.

	following removeAll.
	document descendantNodesDo: [:node |
		node followingNodesDo: [:each |
			following addIfNotPresent: each]].
	self
		assertNodeSet: (XPath for: '//following::node()' in: document)
		hasNodes: following.

	following removeAll.
	persons first followingNodesDo: [:each |
		following addIfNotPresent: each].
	persons third firstNode followingNodesDo: [:each |
		following addIfNotPresent: each].
	self
		assertNodeSet:
			(XPath
				for: '(//person[1]|//person[3]/node()[1])/following::node()'
				in: document)
		hasNodes: following.
	self
		assertNodeSet:
			(XPath
				for: '(//person[1]|//person[last()])/following::node()'
				in: document)
		hasNodes: following.