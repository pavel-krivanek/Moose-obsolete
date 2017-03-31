as yet unclassified
testLine
	self parse: 'hi' rule: #line.
	self assert: result = 'hi'.
	
	self parse: 'hi there how are you' rule: #line.
	self assert: result = 'hi there how are you'.
	
	self fail: '' rule: #line.
