tests
testIsBitsLayout

	self assert: (RGByteLayout unnamed isBitsLayout).
	self assert: (RGWordLayout unnamed isBitsLayout).
	self assert: (RGCompiledMethodLayout unnamed isBitsLayout).
	self deny: (RGFixedLayout unnamed isBitsLayout).
	