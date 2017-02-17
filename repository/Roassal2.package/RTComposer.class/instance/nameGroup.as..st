public-naming
nameGroup: aName as: title
	| label |
	label := (RTLabel new text: title) element.
	TRConstraint move: label above: (mapping at: aName).
	view add: label.
	
	"store a reference to the created element"
	names add: label.
	
	^ label