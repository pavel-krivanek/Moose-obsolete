tests
testElementQualfiedNameTest
	| persons mappings |

	persons := namespacedDocument allElementsNamed: 'person'.
	mappings := 
		Array
			with: 'zero' -> 'defaultNS'
			with: 'one' -> 'bookNS'
			with: 'two' -> 'personNS'.
	self
		assertNodeSet:
			(namespacedDocument xPath:
				'element(book:addressbook)/element(ps:person)')
		hasNodes: persons.
	self assert:
		(namespacedDocument xPath:
			'element(book:addressbook)/element(undeclared:person)') isEmpty.
	self
		assertNodeSet:
			(XPath
				for: '//element(zero:*)'
				in: namespacedDocument
				context: (self contextClass namespaces: mappings))
		hasNodes:
			(namespacedDocument allElementsSelect: [:each |
				each namespaceURI = 'defaultNS']).
	self
		assertNodeSet:
			(XPath
				for: 'element(one:addressbook)/element(two:person)'
				in: namespacedDocument
				context: (self contextClass namespaces: mappings))
		hasNodes: persons.
	self assert:
		(XPath
			for: 'element(one:addressbook)/element(one:person)'
			in: namespacedDocument
			context: (self contextClass namespaces: mappings)) isEmpty.

	self
		should: [
			(XPath
				for: 'element(undeclared:addressbook)'
				in: namespacedDocument
				context: (self contextClass namespaces: mappings))]
		raise: XPathUndeclaredPrefixException.