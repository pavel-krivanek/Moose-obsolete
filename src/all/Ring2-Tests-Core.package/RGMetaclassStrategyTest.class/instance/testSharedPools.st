tests
testSharedPools

	| anRGBehavior |
	
	anRGBehavior := RGBehavior newMetaclass.
	self assert: (anRGBehavior sharedPools) isEmpty.