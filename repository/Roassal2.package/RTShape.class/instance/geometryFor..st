accessing
geometryFor: anElement
	"Return a geometric representation of the shape. A geometric representation is used for computing intersections, overlapping, etc."

	^ GRectangle
		origin: anElement encompassingRectangle origin
		corner: anElement encompassingRectangle corner