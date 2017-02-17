as yet unclassified
afterA: arg
	self assert: arg = #a2.
	
	self assert: (self gtExampleContext includesKey: #b).
	self assert: (self gtExampleContext includesKey: #c).
	
	self gtExampleContext removeKey: #a.
	
	self assert: (self gtExampleContext includesKey: #a) not.
	self assert: self gtExampleContext notEmpty