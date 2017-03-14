tests
testQualfiedNameTest
	| persons mappings |

	persons := namespacedDocument allElementsNamed: 'person'.
	mappings := 
		Array
			with: 'one' -> 'bookNS'
			with: 'two' -> 'personNS'.
	self
		assert: (namespacedDocument xPath: 'book:addressbook/ps:person') = persons;
		assert: (namespacedDocument xPath: 'book:addressbook/undeclared:person') isEmpty.
	self assert:
		(XPath
			for: 'one:addressbook/two:person'
			in: namespacedDocument
			context: (self contextClass namespaces: mappings)) = persons.
	self assert:
		(XPath
			for: 'one:addressbook/one:person'
			in: namespacedDocument
			context: (self contextClass namespaces: mappings)) isEmpty.
	self
		should: [
			(XPath
				for: 'undeclared:addressbook'
				in: namespacedDocument
				context: (self contextClass namespaces: mappings))]
		raise: XPathUndeclaredPrefixException.