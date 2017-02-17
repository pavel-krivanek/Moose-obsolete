tests
testThreeLevel
	| path results |
	path := XPath for: '*/person/contact-info/email'.
	results := path in: document.
	self assert: (results size = 2).