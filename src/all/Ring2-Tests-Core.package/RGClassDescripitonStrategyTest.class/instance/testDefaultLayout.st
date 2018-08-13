tests
testDefaultLayout

	| anRGBehavior |
	
	anRGBehavior := RGBehavior newClass.
	self assert: anRGBehavior defaultLayout isPointerLayout 