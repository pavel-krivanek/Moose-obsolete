tests
testDescendantNodesSelect
	| nodeWithNodes descendantNodes |

	nodeWithNodes := self newNodeWithNodes.
	descendantNodes := nodeWithNodes descendantNodes.
	self
		assertList: (nodeWithNodes descendantNodesSelect: [:each | each isComment])
		selects: (descendantNodes select: [:each | each isComment]).

	descendantNodes do: [:node |
		node canHaveChildren
			ifTrue: [
				self
					assertList: (node descendantNodesSelect: [:each | each isComment])
					selects: (node descendantNodes select: [:each | each isComment])]].