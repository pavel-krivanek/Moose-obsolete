as yet unclassified
intersectCircle: aCircle
	| e l d det t1 t2 a b c result root |
	e := from - aCircle center.
	l := to - aCircle center.
	d := l - e.
	a := d x squared + d y squared.
	b := 2 * e x * d x + (2 * e y * d y).
	c := e x squared + e y squared - aCircle radius squared.
	det := b squared - (4 * a * c).
	det < 0
		ifTrue: [ ^ #() ].
	a = 0
		ifTrue: [ ^ #() ].
	root := det sqrt.
	t1 := (b negated + root) / (2 * a).
	t2 := (b negated - root) / (2 * a).
	result := (Set with: t1 with: t2) collect: [ :each | e + (each * d) + aCircle center ].
	^ (result select: [ :each | each onLineFrom: self from to: self to ]) asArray