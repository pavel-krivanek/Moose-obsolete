event-processed
trMouseDragEnd: aMorphicEvent
	| trEvent dropEvent |
	trEvent := self eventOfClass: TRMouseDragEnd from: aMorphicEvent.
	trEvent shape: shapeBeingPointed.
	shapeBeingPointed announce: trEvent.
	self announceToEventOverseer: trEvent.

	(shapeBeingPointed isKindOf: TRCanvas) ifFalse: [
		dropEvent := self eventOfClass: TRMouseDragDrop shape: shapeUnderDrag from: aMorphicEvent.
		dropEvent draggedShape: shapeBeingPointed.
		shapeUnderDrag announce: dropEvent.
		self announceToEventOverseer: dropEvent.
	].
	
	eventBeginingDragging := nil.
	shapeBeingPointed := nil.
	shapeUnderDrag := nil.