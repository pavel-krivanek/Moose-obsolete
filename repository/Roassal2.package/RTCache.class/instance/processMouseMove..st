private
processMouseMove: evt
	| currentElement trEvent |
	shapeBeingPointed 
		ifNil: [ 
			trEvent := self eventOfClass: TRMouseEnter from: evt.
			shapeBeingPointed := trEvent shape.
			trEvent shape announce: trEvent.
			^ self ].
	currentElement := self shapeForEvent: evt.
	currentElement == shapeBeingPointed
		ifTrue: [ ^ self ].
	trEvent := self eventOfClass: TRMouseLeave from: evt.
	trEvent shape: shapeBeingPointed.
	shapeBeingPointed announce: trEvent.
	shapeBeingPointed := currentElement.
	trEvent := self eventOfClass: TRMouseEnter from: evt.
	trEvent shape announce: trEvent.