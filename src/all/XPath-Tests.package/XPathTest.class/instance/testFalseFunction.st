tests
testFalseFunction
	self deny: 'false()' asXPath evaluate.
	self
		should: ['false(1)' asXPath evaluate]
		raise: XPathArgumentNumberException.