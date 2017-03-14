as yet unclassified
testItem
	self parse: '1) abc' rule: #item.
	
	self assert: result first = 'abc'.
