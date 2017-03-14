as yet unclassified
intersectEllipse: anEllipse
	| hr_sq vr_sq lp ldir diff mdir mdiff a b c det result |
	hr_sq := anEllipse a squared.
	vr_sq := anEllipse b squared.
	lp := Array with: from with: to.
	
	ldir := lp second - lp first.
	diff := lp first - anEllipse center.
	mdir := ldir x / hr_sq @ (ldir y / vr_sq).
	mdiff := diff x / hr_sq @ (diff y / vr_sq).
	
	a := ldir dotProduct: mdir.
	b := ldir dotProduct: mdiff.
	c := (diff dotProduct: mdiff) - 1.
	det := b squared - a*c.
	a = 0 ifTrue: [ ^#() ].
	
	result := OrderedCollection new.
	det = 0 ifTrue: [ |t|
		t := b negated / a.
		result add: (lp first + ((lp second - lp first) * t))
	].
	(det > 0) ~= false ifTrue: [ |root t_a t_b|
		root := det sqrt.
		t_a := b negated - root / a.
		t_b := b negated + root / a.
		result add: (lp first + ((lp second - lp first) * t_a)).
		result add: (lp first + ((lp second - lp first) * t_b)).
	].

	^ result select: [ :each | each onLineFrom: self from to: self to ]