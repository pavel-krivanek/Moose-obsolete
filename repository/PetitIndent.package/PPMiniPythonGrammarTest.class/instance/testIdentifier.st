test-grammar
testIdentifier
	self parse: 'foo' rule: #identifier.
	self parse: '__eq__' rule: #identifier.
	self parse: '_' rule: #identifier.