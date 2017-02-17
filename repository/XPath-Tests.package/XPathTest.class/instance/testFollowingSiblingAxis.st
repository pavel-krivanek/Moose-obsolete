tests
testFollowingSiblingAxis
	| persons siblings |

	persons := document allElementsNamed: 'person'.
	siblings := self newNodeSet.
	siblings addAll: persons allButFirst.
	self
		assertNodeSet:
			(XPath
				for: 'addressbook/person/following-sibling::person'
				in: document)
		hasNodes: siblings.

	siblings removeAll.
	persons do: [:each | 
		each hasChildren
			ifTrue: [siblings addAll: each nodes allButFirst]].
	self
		assertNodeSet:
			(XPath
				for: 'addressbook/person/node()/following-sibling::node()'
				in: document)
		hasNodes: siblings.

	siblings removeAll.
	persons first allNodesDo: [:node |
		node followingSiblingNodesDo: [:each |
			siblings addIfNotPresent: each]].
	self
		assertNodeSet:
			(XPath
				for: 'addressbook/person[1]//following-sibling::node()'
				in: document)
		hasNodes: siblings.

	siblings removeAll.
	document allNodesDo: [:node |
		node followingSiblingNodesDo: [:each |
			siblings addIfNotPresent: each]].
	self
		assertNodeSet:
			(XPath
				for: '//following-sibling::node()'
				in: document)
		hasNodes: siblings.

	siblings removeAll.
	persons first followingSiblingNodesDo: [:each |
		siblings addLast: each].
	persons third nodes first followingSiblingNodesDo: [:each |
		siblings addIfNotPresent: each].
	self
		assertNodeSet:
			(XPath
				for: '(//person[1]|//person[3]/node()[1])/following-sibling::node()'
				in: document)
		hasNodes: siblings.