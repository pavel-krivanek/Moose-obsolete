test isNullable
testIsNullableCycle1
	| a p |
	a := 'a' asParser.
	p := PPDelegateParser new.
	
	p setParser: a / p.
	self assert: p acceptsEpsilon not.