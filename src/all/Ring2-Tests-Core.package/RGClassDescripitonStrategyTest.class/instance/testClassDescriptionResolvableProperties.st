tests
testClassDescriptionResolvableProperties

	| anRGBehavior |
	
	anRGBehavior := RGBehavior newClass.
	
	self assert: (anRGBehavior pvtResolvableProperties asDictionary includesKey: #layout)