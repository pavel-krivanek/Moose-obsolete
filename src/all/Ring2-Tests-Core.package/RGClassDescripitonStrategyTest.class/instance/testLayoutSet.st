tests
testLayoutSet

	| anRGBehavior layout |
	
	anRGBehavior := RGBehavior newClass.
	layout := RGCompiledMethodLayout parent: anRGBehavior.
	anRGBehavior layout: layout.
	self assert: anRGBehavior layout equals: layout.