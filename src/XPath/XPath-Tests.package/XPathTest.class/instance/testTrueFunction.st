tests
testTrueFunction
	self assert: 'true()' asXPath evaluate.
	self
		should: ['true(1)' asXPath evaluate]
		raise: XPathArgumentNumberException.