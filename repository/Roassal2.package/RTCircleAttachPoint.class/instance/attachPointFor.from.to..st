private
attachPointFor: anEdge from: fromRect to: toRect
	| angle x y fromPoint toPoint offsetShift radius vv |
	(anEdge shape isMemberOf: RTArcLine)
		ifTrue: [ ^ self curvedAttachPointFor: anEdge from: fromRect to: toRect ].
	offsetShift := self offsetNormalFor: anEdge.
	fromPoint := fromRect center + offsetShift.
	toPoint := toRect center + offsetShift.
	radius := fromRect width * 0.5.
	angle := (RTLineSegment from: fromPoint to: toPoint) angleInRad ifNil: [ 2 ].
	(toPoint dist: fromPoint) < (toRect width * 0.5 - radius)
		ifTrue: [ angle := angle + Float pi ].	"fromCircle is inside toCircle"
	offsetShift isZero
		ifFalse:
			[ vv := offsetShift r / radius.
			(vv < -1.0 or: [ vv > 1.0 ])
				ifTrue: [ radius := 1.0 ]
				ifFalse: [ radius := radius * vv arcSin cos ] ].
	"recalculates radius based on offset"
	x := radius * angle cos + fromPoint x.
	y := radius * angle sin + fromPoint y.
	^ x @ y