tests
testIsVariableLayout

	self assert: (RGVariableLayout unnamed isVariableLayout).
	self assert: (RGBitsLayout unnamed isVariableLayout).
	self deny: (RGFixedLayout unnamed isVariableLayout).
	self assert: (RGCompiledMethodLayout unnamed isVariableLayout).
	