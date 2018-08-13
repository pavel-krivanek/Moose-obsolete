tests
testIsCompiledMethodLayout

	self assert: (RGCompiledMethodLayout unnamed isCompiledMethodLayout).
	self deny: (RGFixedLayout unnamed isCompiledMethodLayout).
	