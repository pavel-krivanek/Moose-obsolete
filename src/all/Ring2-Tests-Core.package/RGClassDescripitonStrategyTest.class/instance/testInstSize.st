tests
testInstSize

	| anRGBehavior |
	
	anRGBehavior := RGBehavior newClass.
	
	anRGBehavior instanceVariables: #(a b c).
	
	self assert: anRGBehavior instSize equals: 3.