as yet unclassified
afterB
	self assert: (self gtExampleContext includesKey: #c).
	self assert: (self gtExampleContext includesKey: #c2).
	self assert: (self gtExampleContext includesKey: #b).
	self assert: (self gtExampleContext includesKey: #b2).
	
	self gtExampleContext removeKey: #b.
	
	self assert: (self gtExampleContext includesKey: #b) not.
	self assert: (self gtExampleContext includesKey: #b2).
	self assert: (self gtExampleContext includesKey: #c).
	self assert: (self gtExampleContext includesKey: #c2).