tests
testIsFixedLayout

	self assert: (RGFixedLayout unnamed isFixedLayout).
	self deny: (RGWordLayout unnamed isFixedLayout).
	