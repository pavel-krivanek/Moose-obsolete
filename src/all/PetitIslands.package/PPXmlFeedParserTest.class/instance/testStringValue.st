as yet unclassified
testStringValue
	self parse: 'abc' rule: #stringValue to: 'abc'.	
	self parse: ' def ' rule: #stringValue to: 'def'.
	