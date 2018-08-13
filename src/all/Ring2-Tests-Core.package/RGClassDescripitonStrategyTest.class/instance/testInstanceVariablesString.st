tests
testInstanceVariablesString

	| anRGBehavior |
	
	anRGBehavior := RGBehavior newClass.
	
	anRGBehavior instanceVariables: #(a b c).
	
	self assert: anRGBehavior instanceVariablesString equals: 'a b c'.