*XPath-Core-accessing
precedingSiblingNodes
	"returns a node list with all preceding sibling nodes of the receiver"
	| precedingSiblings |

	precedingSiblings := self newListForSelect.
	self precedingSiblingNodesDo: [:each |
		precedingSiblings addLast: each].
	^ precedingSiblings.