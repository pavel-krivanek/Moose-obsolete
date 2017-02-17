accessing
allShapesWithAction: eventClass forPositionInPixels: position
	"position is in pixel, it corresponds to the physical location in the window.
	e.g., 0 @ 0 is top left of the window"

	| pos shapesWithAction |
	shapesWithAction := OrderedCollection new.
	fixedShapes
		reverseDo: [ :s | 
			((s includesPoint: position) and: [ s announcer handleEventClass: eventClass ])
				ifTrue: [ shapesWithAction add: s ] ].
	pos := self camera fromPixelToSpace: position.
	shapes
		reverseDo: [ :s | 
			((s includesPoint: pos) and: [ s announcer handleEventClass: eventClass ])
				ifTrue: [ shapesWithAction add: s ] ].
	(self announcer handleEventClass: eventClass)
		ifTrue: [ shapesWithAction add: self ].
	^ shapesWithAction