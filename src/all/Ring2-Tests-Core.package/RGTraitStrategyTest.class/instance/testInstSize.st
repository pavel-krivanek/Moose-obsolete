tests
testInstSize

	| anRGBehavior |
	
	anRGBehavior := RGBehavior newTrait.
	self assert: anRGBehavior instSize equals: 0