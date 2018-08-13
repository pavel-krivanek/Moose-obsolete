tests
testDefaultMetaclass

	| anRGBehavior |
	
	anRGBehavior := RGBehavior newClass.
	self assert: anRGBehavior defaultMetaClass isMeta 