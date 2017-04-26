event-processed
shapeForEvent: anEvent
	"Return the Trachel shape for the event provided as argument"
	^ self shapeWithActionForPositionInPixels: (self relativePositionFor: anEvent)