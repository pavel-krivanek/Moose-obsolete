as yet unclassified
testCommand
	self parse: 'abc' rule: #command.
	
	self assert: result = 'abc'.