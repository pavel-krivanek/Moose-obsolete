enumerating
allElementsSelect: aBlock
	"returns a new node list with all descendant elements (and the receiver
	if it's an element) that aBlock evaluates true for"

	| selectedElements |

	selectedElements := self newListForSelect.
	self allElementsDo: [:each |
		(aBlock value: each)
			ifTrue: [selectedElements addLast: each]].
	^ selectedElements.