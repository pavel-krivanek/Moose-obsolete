tests
testIsBytesLayout

	self assert: (RGByteLayout unnamed isByteLayout).
	self assert: (RGCompiledMethodLayout unnamed isByteLayout).
	self deny: (RGFixedLayout unnamed isByteLayout).
	