tests
testDot
	| path results |

	path := XPath for: 'addressbook/person/address/./@city'.
	results := path in: document.
	self assert: results size = 4.
	self assert: (results at: 1) value = 'Los Angeles'.
