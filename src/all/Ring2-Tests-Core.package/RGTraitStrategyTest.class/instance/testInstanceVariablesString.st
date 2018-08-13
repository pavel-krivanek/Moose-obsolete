tests
testInstanceVariablesString

	| anRGBehavior |
	
	anRGBehavior := RGBehavior newTrait.
	self assert: anRGBehavior instanceVariablesString equals: ''