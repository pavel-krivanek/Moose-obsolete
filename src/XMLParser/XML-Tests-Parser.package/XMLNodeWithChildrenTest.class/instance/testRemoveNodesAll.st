tests
testRemoveNodesAll
	| nodeWithNodes |

	nodeWithNodes := self newNodeWithNodes.
	1 to: nodeWithNodes nodes size do: [:i | | removed |
		removed := (nodeWithNodes nodes copyFrom: 1 to: i).
		self
			assert: (removed allSatisfy: [:each | nodeWithNodes includesNode: each]);
			assert: (nodeWithNodes removeNodes: removed) == removed;
			deny: (removed anySatisfy: [:each | nodeWithNodes includesNode: each]).
		nodeWithNodes := self newNodeWithNodes].