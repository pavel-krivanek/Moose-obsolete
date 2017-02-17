tests
testNameFunction
	| element |

	(element := XMLElement named: 'test')
		addNode: (XMLElement named: 'test-two');
		addNode: 'test-three' asXMLStringNode.
	self
		assert: (XPath for: 'name()' in: element) = 'test';
		assert: (XPath for: 'name(//.)' in: element) = 'test'.

	element name: 'test' namespaceURI: 'defaultNS'.
	self assert: (XPath for: 'name()' in: element) = 'test'.
	self assert:
		(XPath
			for: 'name()'
			in: element
			context:
				(self newContext
					declarePrefix: 'one'
					uri: 'defaultNS')) = 'test'.

	element name: 'prefix:test' namespaceURI: 'prefixNS'.
	self assert: (XPath for: 'name()' in: element) = 'prefix:test'.
	self assert:
		(XPath
			for: 'name()'
			in: element
			context:
				(self newContext
					declarePrefix: 'two'
					uri: 'prefixNS')) = 'two:test'.

	self assert: (XPath for: 'name(//text())' in: element) isEmpty.