testing
testNegate
	| parser |
	parser := 'foo' asParser negate.
	
	self assert: parser parse: 'f' to: $f end: 1.
	self assert: parser parse: 'fo' to: $f end: 1.
	self assert: parser parse: 'fob' to: $f end: 1.
	self assert: parser parse: 'ffoo' to: $f end: 1.
	
	self assert: parser fail: ''.
	self assert: parser fail: 'foo'