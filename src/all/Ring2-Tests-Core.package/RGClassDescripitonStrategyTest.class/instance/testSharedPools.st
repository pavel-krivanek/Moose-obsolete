tests
testSharedPools

	| anRGBehavior |
	
	anRGBehavior := RGBehavior newClass.
	
	self assert: anRGBehavior sharedPools isEmpty.