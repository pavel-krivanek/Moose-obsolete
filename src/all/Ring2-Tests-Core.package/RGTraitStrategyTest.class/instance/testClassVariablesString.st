tests
testClassVariablesString

	| anRGBehavior |
	
	anRGBehavior := RGBehavior newTrait.

	self assert: anRGBehavior classVariablesString equals: ''

