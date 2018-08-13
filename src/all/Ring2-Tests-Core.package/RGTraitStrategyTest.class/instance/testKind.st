tests
testKind

	| strategy |
	
	strategy := RGBehavior newTrait behaviorStrategy.
	self deny: strategy isClassStrategy.
	self deny: strategy isMetaclassStrategy.
	self assert: strategy isTraitStrategy.
	self deny: strategy isMetaclassTraitStrategy.
	