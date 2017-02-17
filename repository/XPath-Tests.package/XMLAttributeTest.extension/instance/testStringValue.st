*XPath-Tests
testStringValue
	super testStringValue.

	self assert:
		(self nodeClass
			name: 'name'
			value: 'value') stringValue = 'value'