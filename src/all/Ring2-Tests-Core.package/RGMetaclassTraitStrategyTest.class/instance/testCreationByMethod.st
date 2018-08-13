tests
testCreationByMethod

	| anRGBehavior |
	
	anRGBehavior := RGBehavior newMetaclassTrait.
	self assert: (anRGBehavior isBehavior).	
	self assert: (anRGBehavior behaviorStrategy isMetaclassTraitStrategy).