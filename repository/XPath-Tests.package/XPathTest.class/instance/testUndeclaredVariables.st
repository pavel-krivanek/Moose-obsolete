tests
testUndeclaredVariables
	self
		should: [XPath for: '$undeclared/addressbook' in: document]
		raise: XPathUndeclaredVariableException.
	self
		should: [XPath for: '($undeclared)/addressbook' in: document]
		raise: XPathUndeclaredVariableException.
	self
		should: [XPath for: 'addressbook[$undeclared]' in: document]
		raise: XPathUndeclaredVariableException.