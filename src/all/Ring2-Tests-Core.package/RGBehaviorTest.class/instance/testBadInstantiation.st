tests
testBadInstantiation

	self should: [ RGBehavior named: #SomeBehavior ] raise: RGBadInstantiationError 