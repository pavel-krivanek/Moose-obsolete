tests
testElementLocalNameWildcardTest
	| persons mappings |

	persons := namespacedDocument allElementsNamed: 'person'.
	mappings := 
		Array
			with: 'one' -> 'bookNS'
			with: 'two' -> 'personNS'.
	self
		assertNodeSet: (namespacedDocument xpath: 'element(book:*)/element(ps:*)')
		hasNodes: persons.
	self assert: (namespacedDocument xpath: 'element(book:*)/element(undeclared:*)') isEmpty.
	self
		assertNodeSet:
			(XPath
				for: 'element(one:*)/element(two:*)'
				in: namespacedDocument
				context: (self contextClass namespaces: mappings))
		hasNodes: persons.
	self assert:
		(XPath
			for: 'element(one:*)/element(one:*)'
			in: namespacedDocument
			context: (self contextClass namespaces: mappings)) isEmpty.
	self
		should: [
			(XPath
				for: 'element(undeclared:*)'
				in: namespacedDocument
				context: (self contextClass namespaces: mappings))]
		raise: XPathUndeclaredPrefixException.