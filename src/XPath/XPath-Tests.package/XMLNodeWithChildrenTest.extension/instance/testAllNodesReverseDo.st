*XPath-Tests
testAllNodesReverseDo
	| nodeWithNodes |

	super testAllNodesReverseDo.

	nodeWithNodes := self newNodeWithNodes.
	nodeWithNodes allNodesDo: [:each |
		self
			should: [:block | each allNodesReverseDo: block]
			enumerate:
				(each hasChildren
					ifTrue: [each allNodes reversed]
					ifFalse: [Array with: each])].