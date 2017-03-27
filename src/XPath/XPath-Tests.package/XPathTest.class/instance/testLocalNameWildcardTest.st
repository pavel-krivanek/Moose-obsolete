tests
testLocalNameWildcardTest
	| persons mappings |

	persons := namespacedDocument allElementsNamed: 'person'.
	mappings := 
		Array
			with: 'one' -> 'bookNS'
			with: 'two' -> 'personNS'.
	self
		assertNodeSet: (namespacedDocument xpath: 'book:*/ps:*')
		hasNodes: persons.
	self assert: (namespacedDocument xpath: 'book:*/undeclared:*') isEmpty.
	self
		assertNodeSet:
			(XPath
				for: 'one:*/two:*'
				in: namespacedDocument
				context: (self contextClass namespaces: mappings))
		hasNodes: persons.
	self assert:
		(XPath
			for: 'one:*/one:*'
			in: namespacedDocument
			context: (self contextClass namespaces: mappings)) isEmpty.

	self
		should: [
			(XPath
				for: 'undeclared:*'
				in: namespacedDocument
				context: (self contextClass namespaces: mappings))]
		raise: XPathUndeclaredPrefixException.