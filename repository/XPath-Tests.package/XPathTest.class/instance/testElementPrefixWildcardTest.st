tests
testElementPrefixWildcardTest
	| persons |

	persons := namespacedDocument allElementsNamed: 'person'.
	self
		assertNodeSet: (namespacedDocument xPath: 'element(*:addressbook)/element(*:person)')
		hasNodes: persons.
	self assert: (namespacedDocument xPath: 'element(*:addressbook)/element(*:contaxt-info)') isEmpty.
	self
		assertNodeSet:
			(XPath
				for: 'element(one:addressbook)/element(*:person)'
				in: namespacedDocument
				context: (self newContext declarePrefix: 'one' uri: 'bookNS'))
		hasNodes: persons.
	self assert:
		(XPath
			for: 'element(one:addressbook)/element(*:contact-info)'
			in: namespacedDocument
			context: (self newContext declarePrefix: 'one' uri: 'bookNS')) isEmpty.