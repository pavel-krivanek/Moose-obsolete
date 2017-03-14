tests
testStringFunction
	self
		assert: 'string("test")' asXPath evaluate = 'test';
		assert: 'string(1.0)' asXPath evaluate = '1';
		assert: 'string(1 div 0)' asXPath evaluate = 'Infinity';
		assert: 'string(-1 div 0)' asXPath evaluate = '-Infinity';
		assert: 'string(0 div 0)' asXPath evaluate = 'NaN';
		assert: 'string(0.0)' asXPath evaluate = '0';
		assert: 'string(-0.0)' asXPath evaluate = '0';
		assert: 'string(true())' asXPath evaluate = 'true';
		assert: 'string(false())' asXPath evaluate = 'false'.

	"if the argument is omitted, use a node set with the context node"
	self assert:
		('string()' asXPath in: '<test>test</test>' parseXML) = 'test'.

	self
		should: ['string("1", "23")' asXPath evaluate]
		raise: XPathArgumentNumberException.
