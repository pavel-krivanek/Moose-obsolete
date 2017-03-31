as yet unclassified
doMore1: company
	<gtExample>
	<dependsOn: #employee:company:>
	
	self assert: company == c.
	self assert: company last == e.
	self assert: company size = 2.
	self assert: c size = 2.
	self assert: e size = 1.
	
	e add: #modified.
	c add: #modified.
	
	self assert: company == c.
	self assert: company second == e.
	self assert: company size = 3.
	self assert: c size = 3.
	self assert: e size = 2.
	self assert: company second == c second.
	self assert: e last = #modified.
	self assert: company last = #modified.
	
	^ company