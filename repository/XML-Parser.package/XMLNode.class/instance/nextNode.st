accessing
nextNode
	"returns the first node after this one that is a child of the same parent (the next
	sibling) or nil if there isn't one"

	^ self parent ifNotNil: [:node | node nodeAfter: self]