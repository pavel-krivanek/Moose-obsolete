composite shapes
testFillColorAndCompositeShape

	| s label box |
	builder box; withTextAbove; fillColor: Color black.
	s := builder current.
	shapes := s allShapes.
	 
	"Checking the label"
	self assert: shapes first class equals: RTLabel.
	label := shapes first.
	self assert: (label colorFor: RTElement new) equals: RTLabel defaultColor.
	
	"Checking the box"
	self assert: shapes second class equals: RTBox.
	box := shapes second.
	self assert: (box colorFor: RTElement new) equals: Color black.