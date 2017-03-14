tests
testWildcard
	| path results |

	path := XPath for: 'addressbook/*'.
	results := path in: document.
	self assert: results size = 4.
	self
		assertNodeSet: results
		hasNodes: (document allElementsNamed: 'person').