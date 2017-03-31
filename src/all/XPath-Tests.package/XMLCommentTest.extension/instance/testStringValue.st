*XPath-Tests
testStringValue
	super testStringValue.

	self assert: (self nodeClass string: 'test') stringValue = 'test'.