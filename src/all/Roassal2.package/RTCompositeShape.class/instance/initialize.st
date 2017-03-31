initialization
initialize
	super initialize.
	shapes := OrderedCollection new.
	shapeFraming := #yourself.
	layout := #noLayout.

	"If one of the shape changes its size, should we relayout. By default no"
	automaticallyUpdateLayout := false