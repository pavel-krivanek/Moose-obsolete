tests
testAllNodesSelect
	| nodeWithNodes allNodes |

	nodeWithNodes := self newNodeWithNodes.
	allNodes := nodeWithNodes allNodes.
	self
		assertList: (nodeWithNodes allNodesSelect: [:each | each isComment])
		selects: (allNodes select: [:each | each isComment]).

	allNodes do: [:node |
		node canHaveChildren
			ifTrue: [
				self
					assertList: (node allNodesSelect: [:each | each isComment])
					selects: (node allNodes select: [:each | each isComment])]].