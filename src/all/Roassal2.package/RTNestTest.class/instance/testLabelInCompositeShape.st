composed shape
testLabelInCompositeShape

	| v lbl box cs e bigElement p1 p2 |
	v := RTView new.

	lbl := RTLabel new text: ''.
	box := RTBox new.
	cs := RTCompositeShape new.
	cs add: lbl.
	cs add: box.
	cs vertical.

	e := cs element.
	v add: e.

	RTNest new
		for: (Array with: e) add: [ :group :model | 
			bigElement := ((RTBox new size: 20; color: Color red) element).
			group add: bigElement. ].

	self assert: bigElement position ~= e position.
	p1 := bigElement trachelShape position.
	p2 := e trachelShape shapes second position.
	self assert: ((p1 = p2) or: [ (p1 - p2) abs <= (0.5@0.5) ]).