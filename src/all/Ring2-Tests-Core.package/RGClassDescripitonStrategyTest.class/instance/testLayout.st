tests
testLayout

	| anRGBehavior |
	
	anRGBehavior := RGBehavior newClass.
	self assert: anRGBehavior layout isPointerLayout 