tests
testPrecedingAxis
	| persons preceding |

	persons := document allElementsNamed: 'person'.
	preceding := self newNodeSet.
	persons last precedingNodesDo: [:each | preceding addLast: each].
	self
		assertNodeSet:
			(XPath
				for: 'addressbook/person/preceding::node()'
				in: document)
		hasNodes: preceding.

	preceding removeAll.
	persons do: [:person |
		person hasChildren
			ifTrue: [
				person nodes last precedingNodesDo: [:each |
					preceding addIfNotPresent: each]]].
	self
		assertNodeSet:
			(XPath
				for: 'addressbook/person/node()/preceding::node()'
				in: document)
		hasNodes: preceding.

	preceding removeAll.
	document allNodesDo: [:node |
		node precedingNodesDo: [:each |
			preceding addIfNotPresent: each]].
	self
		assertNodeSet:
			(XPath
				for: '//preceding::node()'
				in: document)
		hasNodes: preceding.

	preceding removeAll.
	persons last precedingNodesDo: [:each |
		preceding addLast: each].
	persons second nodes last precedingNodesDo: [:each |
		preceding addLast: each].
	self
		assertNodeSet:
			(XPath
				for: '(//person[last()]|//person[2]/node()[last()])/preceding::node()'
				in: document)
		hasNodes: preceding.
	self
		assertNodeSet:
			(XPath
				for: '(//person[last()]|//person[1])/preceding::node()'
				in: document)
		hasNodes: preceding.