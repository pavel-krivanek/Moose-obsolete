tests
testOneLevel
	| path results |
	path := XPath for: 'addressbook/person'.
	results := path in: document.
	self assert: (results size = 4).