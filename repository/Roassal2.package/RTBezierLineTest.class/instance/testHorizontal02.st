vertical horizontal
testHorizontal02

	| v shape e1 e2 e |
	v := RTView new.
	shape := RTEllipse new size: 15; color: Color blue trans.
	e1 := shape element.
	e2 := shape element.
	v add: e1; add: e2.
	
	e := RTBezierLine horizontal edgeFrom: e1 to: e2.
	v add: e.
	