accessing
descendantNodes
	"returns a node list with all descendant nodes of the receiver"
	| descendentNodes |

	descendentNodes := self newListForSelect.
	self descendantNodesDo: [:each | descendentNodes addLast: each].
	^ descendentNodes.