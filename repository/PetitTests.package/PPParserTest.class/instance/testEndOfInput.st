testing
testEndOfInput
	| parser |
	parser := PPEndOfInputParser on: $a asParser.
	self assert: parser end equals: parser.
	self assert: parser parse: 'a' to: $a.
	self assert: parser fail: ''.
	self assert: parser fail: 'aa'