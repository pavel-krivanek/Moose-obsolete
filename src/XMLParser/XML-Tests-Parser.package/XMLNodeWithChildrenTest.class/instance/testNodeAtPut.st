tests
testNodeAtPut
	| nodeWithNodes newNodeClass newNode |

	nodeWithNodes := self newNodeWithNodes.
	newNodeClass := nodeWithNodes firstNode class.
	self
		should: [nodeWithNodes nodeAt: 0 put: newNodeClass new]
		raise: Error.
	1 to: nodeWithNodes nodes size do: [:i |
		newNode := newNodeClass new.
		self
			assert: (nodeWithNodes nodeAt: i put: newNode) == newNode;
			assert: (nodeWithNodes nodeAt: i) == newNode].

	newNode := newNodeClass new.
	self assert:
		(nodeWithNodes
			nodeAt: nodeWithNodes nodes size + 1
			put: newNode) == newNode.
	self assert: (nodeWithNodes nodeAt: nodeWithNodes nodes size) == newNode.
	self
		should: [
			nodeWithNodes
				nodeAt: nodeWithNodes nodes size + 2
				put: newNodeClass new]
		raise: Error.