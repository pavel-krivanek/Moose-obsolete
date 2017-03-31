tests
testNodesSelect
	| node |

	node := self newNodeWithNodes.
	self
		assertList: (node nodesSelect: [:each | each hasChildren])
		selects: (node nodes select: [:each | each hasChildren]).