tests
testPrefixWildcardTest
	| persons |

	persons := namespacedDocument allElementsNamed: 'person'.
	self
		assertNodeSet: (namespacedDocument xpath: '*:addressbook/*:person')
		hasNodes: persons.
	self assert: (namespacedDocument xpath: '*:addressbook/*:contaxt-info') isEmpty.
	self
		assertNodeSet:
			(XPath
				for: 'one:addressbook/*:person'
				in: namespacedDocument
				context: (self newContext declarePrefix: 'one' uri: 'bookNS'))
		hasNodes: persons.
	self assert:
		(XPath
			for: 'one:addressbook/*:contact-info'
			in: namespacedDocument
			context: (self newContext declarePrefix: 'one' uri: 'bookNS')) isEmpty.