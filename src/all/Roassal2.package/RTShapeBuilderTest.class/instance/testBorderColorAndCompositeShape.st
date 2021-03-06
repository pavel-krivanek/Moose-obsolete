composite shapes
testBorderColorAndCompositeShape

	| s label box |
	builder box; withTextAbove; borderColor: Color black.
	s := builder current.
	shapes := s allShapes.
	 
	"Checking the label"
	self assert: shapes first class equals: RTLabel.
	label := shapes first.
	self assert: label color equals: RTLabel defaultColor.
	
	"Checking the box"
	self assert: shapes second class equals: RTBox.
	box := shapes second.
	self assert: (box borderColorFor: RTElement new) equals: Color black.