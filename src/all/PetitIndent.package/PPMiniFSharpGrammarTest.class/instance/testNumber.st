as yet unclassified
testNumber
	self parse: '1' rule: #number.
	self assert: result = 1.
	
	self parse: '123' rule: #const.	
	self assert: result = 123.