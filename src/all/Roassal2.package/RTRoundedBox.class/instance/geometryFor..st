accessing
geometryFor: anElement
	| rect |
	rect := GRectangle
		origin: anElement encompassingRectangle origin
		corner: anElement encompassingRectangle corner.
	^ GRoundedRectangle rectangle: rect borderRadius: (self borderRadiusFor: anElement)