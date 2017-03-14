accessing
previousNode
	"returns the first node before this one that is a child of the same parent
	(the preivous sibling) or nil if there isn't one"

	^ self parent ifNotNil: [:node | node nodeBefore: self]