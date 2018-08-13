tests
testKind

	| strategy |
	
	strategy := RGBehavior newMetaclassTrait behaviorStrategy.
	self deny: strategy isClassStrategy.
	self deny: strategy isMetaclassStrategy.
	self deny: strategy isTraitStrategy.
	self assert: strategy isMetaclassTraitStrategy.
	