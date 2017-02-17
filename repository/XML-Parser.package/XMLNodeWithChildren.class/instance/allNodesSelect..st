enumerating
allNodesSelect: aBlock
	| selectedNodes |

	selectedNodes := self newListForSelect.
	self allNodesDo: [:each |
		(aBlock value: each)
			ifTrue: [selectedNodes addLast: each]].
	^ selectedNodes.