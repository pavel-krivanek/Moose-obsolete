tests
testLayoutBuilder

	| c v |
	c := RTBox compoundElement.
	c addAll: (RTBox elementsOn: (1 to: 5)).
	c layout grid.
	
	v := RTView new.
	v add: c.
	
	
	
	 