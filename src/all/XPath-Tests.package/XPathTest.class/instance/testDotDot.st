tests
testDotDot
	| path results |
	path := XPath for: 'addressbook/person/address/../address/@city'.
	results := path in: document.
	self assert: results size = 4.
	self assert: (results at: 1) value = 'Los Angeles'.
