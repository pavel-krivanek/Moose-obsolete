*XPath-Core-accessing
precedingNodes
	"returns a node list with all preceding sibling or descendant nodes
	of the receiver"
	| preceding |

	preceding := self newListForSelect.
	self precedingNodesDo: [:each |
		preceding addLast: each].
	^ preceding.