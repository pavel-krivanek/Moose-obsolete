tests
testNodesCollect
	| node |

	node := self newNodeWithNodes.
	self
		assertList: (node nodesCollect: [:each | each identityHash])
		collects: (node nodes collect: [:each | each identityHash]).