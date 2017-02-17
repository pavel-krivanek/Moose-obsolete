tests
testWildcardDescendant
	| path results |

	path := XPath for: '//*'.
	results := path in: document.
	self assert: (results size = 28).
	self
		assertNodeSet: results
		hasNodes: document descendantElements.