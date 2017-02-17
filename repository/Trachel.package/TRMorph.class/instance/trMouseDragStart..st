event-processed
trMouseDragStart: aMorphicEvent
	| trEvent trEventClass trUnderDragEvent |
	eventBeginingDragging := aMorphicEvent copy.
	
	trEventClass := TRMouseDragStart.
	aMorphicEvent redButtonChanged
		ifTrue: [ trEventClass := TRMouseLeftDragStart ].
	aMorphicEvent yellowButtonChanged
		ifTrue: [ trEventClass := TRMouseRightDragStart ].
	trEvent := self eventOfClass: trEventClass actionClass: TRMouseDragging from: aMorphicEvent.

	shapeBeingPointed := trEvent shape.
	shapeBeingPointed announce: trEvent.
	self announceToEventOverseer: trEvent.
	
	(shapeBeingPointed isKindOf: TRCanvas)
		ifTrue: [ ^self ].
	
	trUnderDragEvent := self eventOfClass: TRMouseAbstractDrop actionClass: TRMouseAbstractDrop from:  aMorphicEvent under: shapeBeingPointed.
	
	shapeUnderDrag := trUnderDragEvent shape
	
	