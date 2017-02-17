as yet unclassified
testConst
	self parse: '1' rule: #const.
	self assert: result = 1.
	self parse: '123' rule: #const.	
	self assert: result = 123.
	self parse: '"Hi"' rule: #const.
	self assert: result = 'Hi'.	
