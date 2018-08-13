tests
testSharedPools

	| anRGBehavior |
	
	anRGBehavior := RGBehavior newTrait.
	self assert: (anRGBehavior sharedPools isEmpty).