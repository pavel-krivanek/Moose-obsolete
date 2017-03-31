tests
testDotDotTooHigh
	| path results |
	path := XPath for: 'person/address/../../../address/@city'.
	results := path in: document.
	self assert: results isEmpty.