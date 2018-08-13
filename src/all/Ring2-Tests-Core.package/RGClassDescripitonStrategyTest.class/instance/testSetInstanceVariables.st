tests
testSetInstanceVariables

	| anRGBehavior |
	
	anRGBehavior := RGBehavior newClass.
	
	anRGBehavior instanceVariables: #(a b c).
	
	self assert: anRGBehavior instVarNames equals: #(a b c).