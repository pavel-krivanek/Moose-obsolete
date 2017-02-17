testing-operators
testChoice
	| parser |
	parser := self integer / self string.
	self assert: parser parse: #(123) to: 123.
	self assert: parser parse: #('abc') to: 'abc'