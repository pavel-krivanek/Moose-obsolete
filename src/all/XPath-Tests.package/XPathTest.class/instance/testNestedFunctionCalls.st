tests
testNestedFunctionCalls
	self
		assert: 'number(ceiling(3.5) + floor(1.5))' asXPath evaluate = 5;
		assert: 'contains(concat(concat("one", "two"), string("three")), "two")' asXPath evaluate