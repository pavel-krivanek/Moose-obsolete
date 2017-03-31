testing-mapping
testAnswer
	| parser |
	parser := $a asParser answer: $b.
	
	self assert: parser parse: 'a' to: $b.
	
	self assert: parser fail: ''.
	self assert: parser fail: 'b'