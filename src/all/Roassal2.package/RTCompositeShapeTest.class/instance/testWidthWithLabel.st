tests
testWidthWithLabel

	| c s1 s2 |
	c := RTCompositeShape new.
	s1 := RTBox new size: 5.
	s2 := RTLabel new.
	c add: s1; add: s2.
	
	c width: 20.
	self assert: (s1 width rtValue: RTElement new) equals: 20.
	