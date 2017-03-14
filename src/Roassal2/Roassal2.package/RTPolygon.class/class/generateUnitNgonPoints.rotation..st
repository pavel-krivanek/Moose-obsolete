public
generateUnitNgonPoints: sides rotation: rotationAngle
	"
	RTPolygon generateUnitNgonPoints: 3 rotation: 0
	"
	| increment startAngle points currentAngle |
	increment := 1.0 / sides * 2 * Float pi.
	startAngle := sides even
		ifTrue: [ (Float pi / 2) + (increment / 2) ]
		ifFalse: [ Float pi / 2 ].
	startAngle := startAngle + rotationAngle.
	
	points := Array new: sides.
	0 to: sides - 1 do: [ :i | 
		currentAngle := i * increment + startAngle.
		points at: i+1 put: currentAngle cos @ currentAngle negated sin ].
	^ points