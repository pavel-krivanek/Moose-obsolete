enumerating
allNodesCollect: aBlock
	"returns an ordered list of the receiver and all of its descendant nodes
	evaluated with aBlock"
	| collectedObjects |

	collectedObjects := self newListForCollect.
	self allNodesDo: [:each | collectedObjects addLast: (aBlock value: each)].
	^ collectedObjects.