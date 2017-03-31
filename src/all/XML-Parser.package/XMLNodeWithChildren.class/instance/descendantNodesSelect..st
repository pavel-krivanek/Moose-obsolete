enumerating
descendantNodesSelect: aBlock
	"returns a node list of all descendant nodes of the receiver that aBlock
	evaluates true for"
	| selectedNodes |

	selectedNodes := self newListForSelect.
	self descendantNodesDo: [:each |
		(aBlock value: each)
			ifTrue: [selectedNodes addLast: each]].
	^ selectedNodes.