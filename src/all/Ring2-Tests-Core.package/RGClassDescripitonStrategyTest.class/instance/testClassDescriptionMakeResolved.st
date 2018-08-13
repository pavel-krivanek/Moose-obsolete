tests
testClassDescriptionMakeResolved

	| anRGBehavior |
	
	anRGBehavior := RGBehavior newClass.
	
	self deny: (anRGBehavior hasResolved: #layout).
	anRGBehavior makeResolved.
	self assert: (anRGBehavior hasResolved: #layout).
	
	