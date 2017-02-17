point inclusion
testUpdate
	| v e |
	v := RTView new.
	e := (RTSVGPath new path: 'M 0 0 h 10 v 100 h -10 z') element.
	v add: e.
	self assert: (e trachelShape includesPoint: 5 @ 50).
	self assert: (e trachelShape includesPoint: 50 @ 5) not.
	e shape path: 'M 0 0 h 100 v 10 h -100 z'.
	e update.
	self assert: (e trachelShape includesPoint: 5 @ 50) not.
	self assert: (e trachelShape includesPoint: 50 @ 5)