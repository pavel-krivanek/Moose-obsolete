tests
testIsImmediateLayout

	self assert: (RGImmediateLayout unnamed isImmediateLayout).
	self deny: (RGFixedLayout unnamed isImmediateLayout).
	