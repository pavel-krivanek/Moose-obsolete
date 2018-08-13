tests
testEmtpyClassVariableString

	| anRGBehavior |
	
	anRGBehavior := RGBehavior newClass.
	self assert: anRGBehavior classVariablesString equals: ''.
