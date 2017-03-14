testing
testString
	self assert: self string parse: #('abc') to: 'abc'.
	self assert: self string fail: #(123)