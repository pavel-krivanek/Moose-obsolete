tests
testConcatFunction
	self
		assert: (XPath for: 'concat("one", "two")' in: nil) = 'onetwo';
		assert: (XPath for: 'concat("one", "two", true())' in: nil) = 'onetwotrue'.
	self
		should: [XPath for: 'concat("one")' in: nil]
		raise: XPathArgumentNumberException.