public - effects
highlightIf: aOneArgBlock using: secondOneArgBlock
	"
	aOneArgBlock is the a one-arg condition
	If true, secondOneArgBlock is then used for the label
	"

	elementActions add: [ :elements |
		elements do: [ :element |
		(aOneArgBlock rtValue: element model) ifTrue: [ 
			element @ (RTLabeled new text: [ :model | secondOneArgBlock rtValue: model ]; setAsHighlightable).
		] ] ]