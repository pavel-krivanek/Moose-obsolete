accessing
descendantElements
	"returns a node list of all descendant elements"
	| descendentElements |

	descendentElements := self newListForSelect.
	self descendantElementsDo: [:each | descendentElements addLast: each].
	^ descendentElements.