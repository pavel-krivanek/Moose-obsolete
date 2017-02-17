tests
testRemoveNode
	| nodeWithNodes |

	nodeWithNodes := self newNodeWithNodes.
	nodeWithNodes nodes copy do: [:each |
		self
			assert: (nodeWithNodes includesNode: each);
			assert: (nodeWithNodes removeNode: each) == each;
			deny: (nodeWithNodes includesNode: each)].
	self deny: nodeWithNodes hasChildren.
	self
		should: [nodeWithNodes removeNode: self newNode]
		raise: Error.