tests
testStringValue
	super testStringValue.

	self assert: self newNamespaceNode stringValue = 'prefixNS'.