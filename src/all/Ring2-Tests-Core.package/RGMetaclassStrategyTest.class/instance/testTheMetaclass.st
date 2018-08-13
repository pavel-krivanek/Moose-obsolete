tests
testTheMetaclass

	| anRGBehavior |
	
	anRGBehavior := RGBehavior newMetaclass.
	self assert: (anRGBehavior theMetaClass) equals: anRGBehavior.