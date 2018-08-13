tests
testUnresolvedClassGroupCreatorProperties

	| anRGBehavior |
	
	anRGBehavior := RGBehavior newClass.
	self assert: (anRGBehavior superclass propertyNamed: #creator) equals: anRGBehavior.
	self assert: (anRGBehavior metaclass propertyNamed: #creator) equals: anRGBehavior.
	self assert: (anRGBehavior metaclass superclass propertyNamed: #creator) equals: anRGBehavior.
