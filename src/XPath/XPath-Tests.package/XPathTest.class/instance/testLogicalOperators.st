tests
testLogicalOperators
	self
		deny: '0 or 0 or 0' asXPath evaluate;
		assert: '0 or 0 or 1' asXPath evaluate;
		deny: '1 and 1 and 0' asXPath evaluate;
		assert: '1 and 1 and 2' asXPath evaluate