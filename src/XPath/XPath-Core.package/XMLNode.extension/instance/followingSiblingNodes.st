*XPath-Core-accessing
followingSiblingNodes
	"returns a node list with all following sibling nodes of the receiver"
	| followingSiblings |

	followingSiblings := self newListForSelect.
	self followingSiblingNodesDo: [:each |
		followingSiblings addLast: each].
	^ followingSiblings.