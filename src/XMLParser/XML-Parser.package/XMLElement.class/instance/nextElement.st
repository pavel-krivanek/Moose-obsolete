accessing
nextElement
	"returns the first element after the receiver that is a child of the same
	parent if there is one, nil otherwise"

	^ self parent ifNotNil: [:node | node elementAfter: self]