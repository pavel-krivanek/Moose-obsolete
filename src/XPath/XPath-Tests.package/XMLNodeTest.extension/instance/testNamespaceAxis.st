*XPath-Tests
testNamespaceAxis
	self
		assert: (self newNode @@ 'node()') isEmpty;
		assert: (self newNode @@ '*') isEmpty