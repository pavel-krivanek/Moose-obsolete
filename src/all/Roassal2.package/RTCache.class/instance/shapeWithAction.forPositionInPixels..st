private
shapeWithAction: eventClass forPositionInPixels: position
	| pos |
	pos := canvas camera fromPixelToSpace: position.
	trachelShapes reverseDo: [ :s| 
		((s includesPoint: pos) 
			and: [ s announcer handleEventClass: eventClass ]) ifTrue: [ ^ s ] ].
	^ canvas