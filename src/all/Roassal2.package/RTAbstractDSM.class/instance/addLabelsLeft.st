UI
addLabelsLeft
	| es theModel lbl |
	es := self columnAt: 1.
	es
		do:
			[ :e | 
			theModel := e model key.
			lbl := self labelShapeY elementOn: theModel.
			yinteraction setUpElement: lbl.
			view add: lbl.
			RTConstraint new
				fix: e;
				movable: lbl;
				outer;
				left;
				move ]