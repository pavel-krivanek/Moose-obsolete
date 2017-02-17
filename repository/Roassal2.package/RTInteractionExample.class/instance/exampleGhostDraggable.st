sources
exampleGhostDraggable
	| v e e2 |
	v := RTView new.
	e := RTBox new
		color: Color blue muchDarker;
		width: 150;
		height: 200;
		elementOn: 'drag me'.
	e2 := RTBox new elementOn: 'I am here just so the view isnt zoomed too much'.
	e2 translateTo: 200 @ 300.
	v add: e.
	v add: e2.
	e @ RTGhostDraggable.
	e
		@
			(RTLabeled new
				center;
				color: Color white).
	v @ RTGridView.
	^ v