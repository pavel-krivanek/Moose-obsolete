testing-operators
testSequence
	| parser |
	parser := self integer , self string.
	self assert: parser parse: #(123 'abc') to: #(123 'abc').
	self assert: parser fail: #(123 456).
	self assert: parser fail: #('abc' 'def').
	self assert: parser fail: #('abc' 123)
	