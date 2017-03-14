testing-parser
testClosure
	| parser |
	parser := [ :stream | stream upTo: $s ] asParser.
	self assert: parser parse: '' to: ''.
	self assert: parser parse: 'a' to: 'a'.
	self assert: parser parse: 'aa' to: 'aa'.
	self assert: parser parse: 's' to: ''.
	self assert: parser parse: 'as' to: 'a'.
	self assert: parser parse: 'aas' to: 'aa'.
	self assert: parser parse: 'sa' to: '' end: 1.
	self assert: parser parse: 'saa' to: '' end: 1.
	
	parser := [ :stream | stream upTo: $s. PPFailure message: 'stream' context: stream ] asParser.
	self assert: parser fail: ''.
	self assert: parser fail: 's'.
	self assert: parser fail: 'as'
	