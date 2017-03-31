event-processed
eventOfClass: anEventClass actionClass: anActionClass from: aMorphicEvent under: aShape
	| relativePosition shape |
	relativePosition := self relativePositionFor: aMorphicEvent.
	shape := self
		shapeWithAction: anActionClass
		forPositionInPixels: relativePosition
		under: aShape.
	^ (anEventClass fromEvent: aMorphicEvent)
		morph: self;
		canvas: trachelCanvas;
		shape: shape;
		position: relativePosition;
		yourself