tests
testSharedPoolNames

	| anRGBehavior |
	
	anRGBehavior := RGBehavior newTrait.
	self assert: (anRGBehavior sharedPoolNames isEmpty).