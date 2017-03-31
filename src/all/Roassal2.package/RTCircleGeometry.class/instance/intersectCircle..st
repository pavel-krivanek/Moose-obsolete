comparing
intersectCircle: aCircle
	| radii a h d p2 x1 y1 x2 y2 |
	d := self center dist: aCircle center.
	radii := self radius + aCircle radius.
	"too far apart"
	d > radii
		ifTrue: [ ^ #() ].
	"one within another"
	d < (self radius - aCircle radius) abs
		ifTrue: [ ^ #() ].
	a := (self radius squared - aCircle radius squared + d squared) / (2 * d).
	h := (self radius squared - a squared) sqrt.
	p2 := (aCircle center - self center) * (a / d) + self center.
	x1 := p2 x + (h * (aCircle center y - self center y) / d).
	y1 := p2 y - (h * (aCircle center x - self center x) / d).
	x2 := p2 x - (h * (aCircle center y - self center y) / d).
	y2 := p2 y + (h * (aCircle center x - self center x) / d).
	(x1@y1) = (x2 @ y2) 
		ifTrue: [ ^ Array with: x1@y1 ]
		ifFalse: [ ^ Array with: x1 @ y1 with: x2 @ y2 ].
	