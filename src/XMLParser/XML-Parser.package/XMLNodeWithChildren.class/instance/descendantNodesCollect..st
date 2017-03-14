enumerating
descendantNodesCollect: aBlock
	"returns an ordered list of the values of all descendant nodes of the
	receiver evaluated with aBlock"
	| collectedObjects |

	collectedObjects := self newListForCollect.
	self descendantNodesDo: [:each |
		collectedObjects addLast: (aBlock value: each)].
	^ collectedObjects.