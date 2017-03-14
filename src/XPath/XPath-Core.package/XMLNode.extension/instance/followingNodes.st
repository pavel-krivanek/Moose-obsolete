*XPath-Core-accessing
followingNodes
	"returns a node list with all following sibling or descendant nodes
	of the receiver"
	| following |

	following := self newListForSelect.
	self followingNodesDo: [:each |
		following addLast: each].
	^ following.