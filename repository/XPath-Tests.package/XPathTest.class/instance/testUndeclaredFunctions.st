tests
testUndeclaredFunctions
	self
		should: [XPath for: 'undeclared()/addressbook' in: document]
		raise: XPathUndeclaredFunctionException.
	self
		should: [XPath for: '(undeclared())/addressbook' in: document]
		raise: XPathUndeclaredFunctionException.
	self
		should: [XPath for: 'addressbook[undeclared()]' in: document]
		raise: XPathUndeclaredFunctionException.