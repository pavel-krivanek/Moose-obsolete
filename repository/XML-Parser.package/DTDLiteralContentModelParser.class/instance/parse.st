parsing
parse
	"either ANY or EMPTY"
	(contentModel at: 1) == $A
		ifTrue: [^ XMLAnyElementValidator element: element]
		ifFalse: [^ XMLEmptyElementValidator element: element]