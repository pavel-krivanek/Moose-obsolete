tests
testNotFunction
	self	
		deny: 'not(true())' asXPath evaluate;
		assert: 'not(false())' asXPath evaluate;
		deny: 'not(1) or not("1")' asXPath evaluate;
		assert: 'not(0) and not("")' asXPath evaluate;
		deny: (document xpath: 'not(/node())');
		assert: (document xpath: 'not(/text())').
	self
		should: ['not()' asXPath evaluate]
		raise: XPathArgumentNumberException.