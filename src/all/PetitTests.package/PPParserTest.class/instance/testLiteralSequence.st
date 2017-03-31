testing
testLiteralSequence
	| parser |
	parser := PPLiteralSequenceParser on: 'abc' message: 'sequence "abc" expected'.
	self assert: parser size equals: 3.
	self assert: parser literal equals: 'abc'.
	self assert: parser message equals: 'sequence "abc" expected'.
	self assert: parser parse: 'abc' to: 'abc'.
	self assert: parser fail: 'ab'.
	self assert: parser fail: 'abd'