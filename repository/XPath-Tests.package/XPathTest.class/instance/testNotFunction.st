tests
testNotFunction
	self	
		deny: 'not(true())' asXPath evaluate;
		assert: 'not(false())' asXPath evaluate;
		deny: 'not(1) or not("1")' asXPath evaluate;
		assert: 'not(0) and not("")' asXPath evaluate;
		deny: (document xPath: 'not(/node())');
		assert: (document xPath: 'not(/text())').
	self
		should: ['not()' asXPath evaluate]
		raise: XPathArgumentNumberException.