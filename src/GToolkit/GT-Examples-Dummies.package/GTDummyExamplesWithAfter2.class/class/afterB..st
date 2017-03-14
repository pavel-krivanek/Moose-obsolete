as yet unclassified
afterB: arg
	self assert: arg = #b2.
	
	self assert: (self gtExampleContext includesKey: #a) not.
	self assert: (self gtExampleContext includesKey: #c).
	
	self gtExampleContext removeKey: #b.
	
	self assert: (self gtExampleContext includesKey: #b) not.
	self assert: self gtExampleContext notEmpty