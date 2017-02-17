accessing
ancestorElements
	"returns a node list with all ancestor elements of the receiver"
	| ancestorElements |

	ancestorElements := self newListForSelect.
	self ancestorElementsDo: [:each | ancestorElements addLast: each].
	^ ancestorElements.