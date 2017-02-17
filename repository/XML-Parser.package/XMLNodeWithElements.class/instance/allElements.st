accessing
allElements
	"returns a node list with all descendant elements (and the receiver if
	it's an element)"
	| allElements |

	allElements := self newListForSelect.
	self allElementsDo: [:each | allElements addLast: each].
	^ allElements.