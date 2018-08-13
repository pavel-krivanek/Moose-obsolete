tests
testKindOfSubclass

	| anRGBehavior |
	
	anRGBehavior := RGBehavior newClass.
	
	self assert: anRGBehavior kindOfSubclass equals: ' subclass: '.