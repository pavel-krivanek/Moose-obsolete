*XPath-Tests
testAsXPathNodeSet
	self
		should: [self newNode asXPathNodeSet]
		raise: XPathTypeException