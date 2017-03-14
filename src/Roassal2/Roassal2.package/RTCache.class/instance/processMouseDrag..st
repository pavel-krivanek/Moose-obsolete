private
processMouseDrag: evt
	| shape relativePosition |
	relativePosition := canvas camera fromSpaceToPixel: evt position.
	shape := self shapeWithAction: evt class forPositionInPixels: relativePosition.
	evt shape: shape.
	evt shape announce: evt.
	evt position: relativePosition.