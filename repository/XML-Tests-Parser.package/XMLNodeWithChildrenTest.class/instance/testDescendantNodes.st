tests
testDescendantNodes
	| nodeWithNodes descendantNodes |

	nodeWithNodes := self newNodeWithNodes.
	descendantNodes := nodeWithNodes descendantNodes.
	self
		assertList: descendantNodes
		selects: nodeWithNodes allNodes allButFirst.

	descendantNodes do: [:node |
		node canHaveChildren
			ifTrue: [
				self
					assertList: node descendantNodes
					selects: node allNodes allButFirst]].