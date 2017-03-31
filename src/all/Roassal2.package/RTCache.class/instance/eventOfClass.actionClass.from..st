private
eventOfClass: anEventClass actionClass: anActionClass from: event
	| relativePosition trEvent shape |
	relativePosition := canvas camera fromSpaceToPixel: event position.
	shape := self shapeWithAction: anActionClass forPositionInPixels: relativePosition.

	trEvent := anEventClass fromEvent: event.
	trEvent
		morph: self;
		canvas: canvas;
		shape: shape;
		position: relativePosition.
	^ trEvent