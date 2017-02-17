private
shapeWithActionForPositionInPixels: position
	| pos |
	pos := canvas camera fromPixelToSpace: position.
	trachelShapes reverseDo: [ :s| 
		((s includesPoint: pos) 
			and: [ s hasEventCallback ]) ifTrue: [ ^ s ] ].
	^ canvas