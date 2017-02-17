as yet unclassified
afterC	
	self assert: (self gtExampleContext includesKey: #c).
	
	self gtExampleContext removeKey: #c.
	
	self assert: (self gtExampleContext includesKey: #c) not.
	self assert: (self gtExampleContext includesKey: #c2).