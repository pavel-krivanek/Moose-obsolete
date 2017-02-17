testing
testLiteralObject
	| parser |
	parser := PPLiteralObjectParser on: $a message: 'letter "a" expected'.
	self assert: parser literal equals: $a.
	self assert: parser message equals: 'letter "a" expected'.
	self assert: parser parse: 'a' to: $a.
	self assert: parser fail: 'b'