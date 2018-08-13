tests
testKind

	| strategy |
	
	strategy := RGBehavior newClass behaviorStrategy.
	self assert: strategy isClassStrategy.
	self deny: strategy isMetaclassStrategy.
	self deny: strategy isTraitStrategy.
	self deny: strategy isMetaclassTraitStrategy.
	