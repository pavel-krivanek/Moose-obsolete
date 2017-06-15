private
positionFor: anElement
	"something fancy here to find a nice position for this element"
	| rect res |
	rect := view canvas encompassingRectangle.
	(last isNil or: [last > 4]) ifTrue: [ last := 1 ].
	res := rect corners at: last.
	last := last + 1.
	^ res.
	