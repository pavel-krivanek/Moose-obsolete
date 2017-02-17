as yet unclassified
testItem3
	self parse: '2) abc' rule: #item.
	self assert: result first = 'abc'.
	
	self parse: '2.1) abc' rule: #item.
	self assert: result first = 'abc'.
	
	self parse: '2.2) def' rule: #item.	
	self assert: result first = 'def'.
