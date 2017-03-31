test isNullable
testIsNullableCycle3
	| a p e |
	a := 'a' asParser.
	e := nil asParser.
	p := PPDelegateParser new.
	
	p setParser: (a, p), e.
	
	self assert: p acceptsEpsilon not.