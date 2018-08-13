tests
testCreationByMethod

	| anRGBehavior |
	
	anRGBehavior := RGBehavior newTrait.
	self assert: (anRGBehavior isBehavior).	
	self assert: (anRGBehavior behaviorStrategy isTraitStrategy).