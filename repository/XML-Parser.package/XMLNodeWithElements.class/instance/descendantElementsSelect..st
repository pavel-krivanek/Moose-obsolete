enumerating
descendantElementsSelect: aBlock
	"returns a new node list with all descendant elements that aBlock
	evaluates true for"
	| selectedElements |

	selectedElements := self newListForSelect.
	self descendantElementsDo: [:each |
		(aBlock value: each)
			ifTrue: [selectedElements addLast: each]].
	^ selectedElements.