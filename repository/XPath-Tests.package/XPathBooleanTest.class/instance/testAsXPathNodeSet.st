tests
testAsXPathNodeSet
	self
		should: [true asXPathNodeSet]
		raise: XPathTypeException.
	self
		should: [false asXPathNodeSet]
		raise: XPathTypeException.