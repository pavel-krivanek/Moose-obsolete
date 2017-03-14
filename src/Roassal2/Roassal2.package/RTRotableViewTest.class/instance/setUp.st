running
setUp
	| e |
	super setUp.
	v := RTView new.
	e := (RTBox new size: 30) element.
	v add: e.
	e translateBy: 50 @ 50.
	
	r := RTRotableView new.
	v @ r.