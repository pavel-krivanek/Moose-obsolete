tests
testStringFunction
	self
		assert: 'string("test")' asXPath evaluate = 'test';
		assert: 'string(1.0)' asXPath evaluate = '1';
		assert: 'string(1 div 0)' asXPath evaluate = 'Infinity';
		assert: 'string(-1 div 0)' asXPath evaluate = '-Infinity';
		assert: 'string(0 div 0)' asXPath evaluate = 'NaN';
		assert: 'string(0.0)' asXPath evaluate = '0';
		assert: 'string(-0.0)' asXPath evaluate = '0'