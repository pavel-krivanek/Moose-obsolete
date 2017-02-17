tests
testTextFor

	| shape e |
	shape := RTCompositeShape new.
	shape allOfSameSizeWithPadding.
	shape add: (RTBox new color: Color white; borderWidth: 2; borderColor: Color black).
	shape add: (RTEditableLabel new height: 30).
	e := shape elementOn: 'hello'.
	
	self assert: (shape textFor: e) equals: 'hello'