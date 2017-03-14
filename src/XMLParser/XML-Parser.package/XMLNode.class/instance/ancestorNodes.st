accessing
ancestorNodes
	"returns a node list with all ancestor nodes of the receiver"
	| ancestors |

	ancestors := self newListForSelect.
	self ancestorNodesDo: [:each | ancestors addLast: each].
	^ ancestors.