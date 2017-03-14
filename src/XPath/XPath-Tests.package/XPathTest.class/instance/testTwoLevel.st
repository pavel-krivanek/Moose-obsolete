tests
testTwoLevel
	| path results |
	path := XPath for: '/*/person/address'.
	results := path in: document.
	self assert: (results size = 4).