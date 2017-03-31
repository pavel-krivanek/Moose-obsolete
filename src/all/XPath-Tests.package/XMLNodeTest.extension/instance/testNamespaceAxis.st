*XPath-Tests
testNamespaceAxis
	self
		assert: (self newNode namespaceAxis: 'node()') isEmpty;
		assert: (self newNode namespaceAxis: '*') isEmpty