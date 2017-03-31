as yet unclassified
intersectCircleArc: aCircleArc
	| intersections |
	intersections := self intersectCircle: aCircleArc circle.
	intersections ifEmpty: [ ^ #() ].
	^ intersections
		select: [ :each | 
			| angle |
			angle := ((each y - aCircleArc center y) negated arcTan: each x - aCircleArc center x)
				% Float twoPi.
			angle between: aCircleArc startAngle and: aCircleArc endAngle ]