UI
addLabelsTop
	| es theModel lbl labels deltaY |
	es := self rowAt: 1.
	labels := OrderedCollection new.
	deltaY := Float fmax.
	es
		do:
			[ :e | 
			theModel := e model value.
			lbl := self labelShapeX elementOn: theModel.
			labels add: lbl.
			xinteraction setUpElement: lbl.
			view add: lbl.
			lbl rotateByDegrees: rotation.
			RTConstraint new
				fix: e;
				movable: lbl;
				outer;
				middle;
				top;
				move.
			deltaY := deltaY min: lbl position y ].
	labels do: [ :l | 
		l translateTo: l position x @ deltaY ].