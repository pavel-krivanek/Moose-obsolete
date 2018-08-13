tests
testCreationByMethod

	| anRGBehavior |
	
	anRGBehavior := RGBehavior newMetaclass.
	self assert: (anRGBehavior isBehavior).	
	self assert: (anRGBehavior behaviorStrategy isMetaclassStrategy).