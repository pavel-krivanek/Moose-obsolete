*XPath-Tests
testStringValue
	super testStringValue.

	self assert: self newPIWithTargetAndData stringValue = 'data'.