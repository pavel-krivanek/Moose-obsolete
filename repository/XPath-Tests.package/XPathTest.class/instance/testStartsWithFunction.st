tests
testStartsWithFunction
	self
		assert: 'starts-with("onetwothree", "one")' asXPath evaluate;
		deny: 'starts-with("onetwothree", "ONE")' asXPath evaluate;
		"string-type argument converts 1.0 to '1', but not 1.1 to '1'"
		assert: 'starts-with("123", 1.0)' asXPath evaluate;
		deny: 'starts-with("123", 1.1)' asXPath evaluate