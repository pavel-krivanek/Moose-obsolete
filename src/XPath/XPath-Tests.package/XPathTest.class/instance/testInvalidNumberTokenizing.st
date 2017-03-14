tests
testInvalidNumberTokenizing
	self
		should: ['. 1' asXPath evaluate]
		raise: XPathSyntaxException.
	self
		should: ['1 .' asXPath evaluate]
		raise: XPathSyntaxException.
	self
		should: ['.1.2' asXPath evaluate]
		raise: XPathSyntaxException.
	self
		should: ['1.2.' asXPath evaluate]
		raise: XPathSyntaxException.