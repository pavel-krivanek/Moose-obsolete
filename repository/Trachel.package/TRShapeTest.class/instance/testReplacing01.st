replacing
testReplacing01
	| c s1 s2 |
	c := TRCanvas new.
	s1 := TRBoxShape new extent: 30 @ 40; color: Color red.
	s2 := TRBoxShape new extent: 50 @ 20; color: Color green.
	c addShape: s1.
	s1 translateBy: 5 @ 5.
	
	self assert: s1 canvas == c.
	self assert: s2 canvas ~~ c.
	
	self assert: s1 extent ~= s2 extent.
	self assert: s1 position ~= s2 position.
	
	s1 replaceShapeBy: s2.
	self assert: s1 canvas ~~ c.
	self assert: s2 canvas == c.
	
	self assert: s1 extent = s2 extent.
	self assert: s1 position = s2 position.
