tests
testPrecedingSiblingAxis
	| persons siblings |

	persons := document allElementsNamed: 'person'.
	siblings := self newNodeSet.
	persons fourth precedingSiblingNodesDo: [:each |
		siblings addLast: each].
	self
		assertNodeSet:
			(XPath
				for: 'addressbook/person[4]/preceding-sibling::node()'
				in: document)
		hasNodes: siblings.

	siblings removeAll.
	persons fourth precedingSiblingNodesDo: [:node |
		node hasChildren
			ifTrue: [
				node
					elementsAt: 'manager'
					do: [:each | siblings addIfNotPresent: each]]].
	self
		assertNodeSet:
			(XPath
				for: 'addressbook/person[4]/preceding-sibling::node()/manager'
				in: document)
		hasNodes: siblings.

	siblings removeAll.
	persons fourth allNodesDo: [:node |
		node precedingSiblingNodesDo: [:each |
			siblings addIfNotPresent: each]].
	self
		assertNodeSet:
			(XPath
				for: 'addressbook/person[4]//preceding-sibling::node()'
				in: document)
		hasNodes: siblings.

	siblings removeAll.
	document allNodesDo: [:node |
		node precedingSiblingNodesDo: [:each |
			siblings addIfNotPresent: each]].
	self
		assertNodeSet:
			(XPath for: '//preceding-sibling::node()' in: document)
		hasNodes: siblings.

	siblings removeAll.
	persons last precedingSiblingNodesDo: [:each |
		siblings addLast: each].
	persons second nodes last precedingSiblingNodesDo: [:each |
		siblings addIfNotPresent: each].
	self
		assertNodeSet:
			(XPath
				for: '(//person[last()]|//person[2]/node()[last()])/preceding-sibling::node()'
				in: document)
		hasNodes: siblings.