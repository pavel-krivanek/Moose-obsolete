tests
testOrder

	| c v e |
	c := RTBox compoundElement.
	e := RTBox element.
	c add: e.
	v := RTView new.
	v add: c.
	
	self assert: v elements equals: (RTGroup with: c with: e).
	self assert: (v elements collect: #trachelShape) asArray equals: v canvas shapes asArray
	
	
	 