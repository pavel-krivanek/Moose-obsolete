accessing
shapeWithAction: eventClass forPositionInPixels: position under: aShape
	"position is in pixel, it corresponds to the physical location in the window.
	e.g., 0 @ 0 is top left of the window"

	| pos |
	pos := self camera fromPixelToSpace: position.
	shapes
		reverseDo: [ :s | 
			(s ~= aShape
				and: [ (s includesPoint: pos) and: [ s announcer handleEventClass: eventClass ] ])
				ifTrue: [ ^ s ] ].
	^ self