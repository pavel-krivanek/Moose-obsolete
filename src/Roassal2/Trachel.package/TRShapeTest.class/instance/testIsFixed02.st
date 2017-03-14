fixed
testIsFixed02

	| c s |
	c := TRCanvas new.
	
	s := TRBoxShape new size: 30.
	c addShape: s.
	s setAsFixed.

	s pushFront