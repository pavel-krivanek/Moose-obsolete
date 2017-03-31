accessing
allNodes
	"returns a node list with the receiver and all of its descendant nodes"
	| allNodes |

	allNodes := self newListForSelect.
	self allNodesDo: [:each | allNodes addLast: each].
	^ allNodes.