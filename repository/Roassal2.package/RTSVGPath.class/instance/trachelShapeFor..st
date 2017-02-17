hooks
trachelShapeFor: anElement
	| shape |
	shape := TRSVGPath new.
	self updateFor: anElement trachelShape: shape.
	^ shape