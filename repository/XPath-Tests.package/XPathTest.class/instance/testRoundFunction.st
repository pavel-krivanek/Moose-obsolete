tests
testRoundFunction
	self
		assert: 'round(1.1)' asXPath evaluate = 1;
		assert: 'round(1.9)' asXPath evaluate = 2;
		assert: 'round(1 div 0)' asXPath evaluate = Float infinity;
		assert: 'round(-1 div 0)' asXPath evaluate = Float xPathNegativeInfinity;
		assert: 'round(0 div 0)' asXPath evaluate isNaN;
		assert: 'round(0.5)' asXPath evaluate = 1;
		assert: 'round(-0.5)' asXPath evaluate isXPathNegativeZero;
		assert: 'round(0.0)' asXPath evaluate isXPathPositiveZero;
		assert: 'round(-0.0)' asXPath evaluate isXPathNegativeZero