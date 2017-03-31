testing
testNumber
	result := self parse: '1' rule: #number.
	self assert: result = 1.