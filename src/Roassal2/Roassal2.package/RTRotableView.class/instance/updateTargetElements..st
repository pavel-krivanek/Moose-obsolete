action
updateTargetElements: evt
	| target c angle eangle p d evtPoint |
	target := elements value."A collection of elements"
	c := center value."a point"
	evtPoint := (evt positionFromCamera - c ).
	angle := startPoint theta - evtPoint theta.
	startPoint := evtPoint.

	target do: [ :e |
		d := c dist: e position .
		eangle := (e position - c) theta - angle.
		p := c + ((d * eangle cos) @ (d * eangle sin)).
		e translateTo: p.
		 ].
	view signalUpdate.