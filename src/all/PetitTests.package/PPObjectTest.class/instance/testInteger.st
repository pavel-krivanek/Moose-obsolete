testing
testInteger
	self assert: self integer parse: #(123) to: 123.
	self assert: self integer fail: #('abc')