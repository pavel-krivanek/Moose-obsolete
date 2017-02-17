tests
testAdding
	| v c es |
	v := RTView new.
	c := RTBox compoundElement.
	es := RTBox elementsOn: (1 to: 5).
	c addAll: es.
	self assert: c children equals: es.

	v add: c.
	self assert: v numberOfElements equals: 6
	
	