tests
testDescendantNodesCollect
	| nodeWithNodes descendantNodes |

	nodeWithNodes := self newNodeWithNodes.
	descendantNodes := nodeWithNodes descendantNodes.
	self
		assertList: (nodeWithNodes descendantNodesCollect: [:each | each identityHash])
		collects: (descendantNodes collect: [:each | each identityHash]).

	descendantNodes do: [:node |
		node canHaveChildren
			ifTrue: [
				self
					assertList: (node descendantNodesCollect: [:each | each identityHash])
					collects: (node descendantNodes collect: [:each | each identityHash])]].