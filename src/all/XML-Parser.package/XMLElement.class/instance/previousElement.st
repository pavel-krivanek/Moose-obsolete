accessing
previousElement
	"returns the first element before the receiver that is a child of the same
	parent if there is one, nil otherwise"

	^ self parent ifNotNil: [:node | node elementBefore: self]