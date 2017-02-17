fixed
testIsFixed

	| c s |
	c := TRCanvas new.
	
	s := TRBoxShape new size: 30.
	c addShape: s.
	s setAsFixed.

	self assert: s isFixed.
	self assert: (c fixedShapes includes: s).
	s remove.
	self deny: (c fixedShapes includes: s).
	
	