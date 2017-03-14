tests
testOuterXMLForNode
	| nodeWithElements root nodes |

	nodeWithElements := self newNodeWithElements.
	root := nodeWithElements firstElement.
	nodes := root nodes copy.
	nodes copy withIndexDo: [:each :i | | innerXML newNode |
		innerXML := '<new', i printString, '>test</new', i printString, '>'.
		root outerXML: innerXML forNode: each.
		newNode := root nodeAt: i.
		self
			assert: newNode printString = innerXML;
			deny: root nodes = nodes.
		nodes at: i put: newNode.
		self assert: root nodes = nodes].

	nodes copy do: [:each |
		root outerXML: '' forNode: each.
		self deny: root nodes = nodes.
		nodes remove: each.
		self assert: root nodes = nodes].