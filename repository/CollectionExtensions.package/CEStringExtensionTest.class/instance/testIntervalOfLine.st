tests
testIntervalOfLine
	| string |
	string := '123
56
89'.
	self assert: (string intervalOfLine: 1) = (1 to: 4).
	self assert: (string intervalOfLine: 2) = (5 to: 7).
	self assert: (string intervalOfLine: 3) = (8 to: 9)