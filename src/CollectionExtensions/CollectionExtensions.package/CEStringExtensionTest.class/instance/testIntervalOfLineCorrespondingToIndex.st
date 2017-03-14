tests
testIntervalOfLineCorrespondingToIndex
	| string |
	string := '123
56
89'.
	self assert: (string intervalOfLineCorrespondingToIndex: 1) = (1 to: 4).
	self assert: (string intervalOfLineCorrespondingToIndex: 7) = (5 to: 7).
	self assert: (string intervalOfLineCorrespondingToIndex: 9) = (8 to: 9)