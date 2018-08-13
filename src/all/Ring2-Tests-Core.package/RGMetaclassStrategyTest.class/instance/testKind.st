tests
testKind

	| strategy |
	
	strategy := RGBehavior newMetaclass behaviorStrategy.
	self deny: strategy isClassStrategy.
	self assert: strategy isMetaclassStrategy.
	self deny: strategy isTraitStrategy.
	self deny: strategy isMetaclassTraitStrategy.
	