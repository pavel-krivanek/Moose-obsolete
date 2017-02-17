event-processed
trMouseDragging: aMorphicEvent
	| trEvent step underShape trUnderDragEvent overEvent |
	eventBeginingDragging ifNil: [ ^ self ].
	step := aMorphicEvent position - eventBeginingDragging position.

	trEvent := self eventOfClass: TRMouseDragging from: aMorphicEvent.
	trEvent step: step.

	shapeBeingPointed ifNil: [ shapeBeingPointed := trEvent shape ].
	"If the element was removed during the drag then cancel the event"
	shapeBeingPointed canvas
		ifNil: [ eventBeginingDragging := nil.
			shapeBeingPointed := nil.
			^ self ].

	trEvent shape: shapeBeingPointed.
	shapeBeingPointed announce: trEvent.
	self announceToEventOverseer: trEvent.
	eventBeginingDragging := aMorphicEvent copy.
	
	(shapeBeingPointed isKindOf: TRCanvas) ifTrue: [ ^self ].
	
	trUnderDragEvent := self eventOfClass: TRMouseAbstractDrop actionClass: TRMouseAbstractDrop from:  aMorphicEvent under: shapeBeingPointed.
	trUnderDragEvent draggedShape: shapeBeingPointed.
	underShape := trUnderDragEvent shape.
	
	underShape = shapeUnderDrag ifFalse: [ |leaveEvent enterEvent|
		leaveEvent := self eventOfClass: TRMouseDragLeave shape: shapeUnderDrag from: aMorphicEvent.
		leaveEvent draggedShape: shapeBeingPointed.
		shapeUnderDrag announce: leaveEvent.
		self announceToEventOverseer: leaveEvent.
		enterEvent := self eventOfClass: TRMouseDragEnter shape: underShape from: aMorphicEvent.
		enterEvent draggedShape: shapeBeingPointed.
		underShape announce: enterEvent.
		self announceToEventOverseer: enterEvent.
		shapeUnderDrag := underShape.
	].
	
	overEvent := self eventOfClass: TRMouseDragOver shape: shapeUnderDrag from: aMorphicEvent.
	overEvent draggedShape: shapeBeingPointed.
	shapeUnderDrag announce: overEvent.
	self announceToEventOverseer: overEvent.