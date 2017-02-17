initialization
initialize
	| base |
	super initialize.
	self rightLeft.
	shapeBuilder := RTShapeBuilder new.
	base := Color r: 51 g: 153 b: 255 range: 255.
	shapeBuilder rectangle borderColor: base ; color: (base alpha: 0.2).
	self key: #rtSelectorShape.
	self allowNegatedBox: true.
	announcer := Announcer new.
	view := nil.
	group := #().