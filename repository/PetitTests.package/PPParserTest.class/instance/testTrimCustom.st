testing-mapping
testTrimCustom
	| parser |
	parser := $a asParser token trim: $b asParser.
	
	self assert: parser parse: 'a' toToken: 1 stop: 1.
	self assert: parser parse: 'ab' toToken: 1 stop: 1.
	self assert: parser parse: 'abb' toToken: 1 stop: 1.
		
	self assert: parser parse: 'a' toToken: 1 stop: 1.
	self assert: parser parse: 'ba' toToken: 2 stop: 2.
	self assert: parser parse: 'bba' toToken: 3 stop: 3.
	
	self assert: parser parse: 'aa' toToken: 1 stop: 1 end: 1.
	self assert: parser parse: 'ab' toToken: 1 stop: 1 end: 2.
	self assert: parser parse: 'abba' toToken: 1 stop: 1 end: 3.
	
	self assert: parser fail: ''.
	self assert: parser fail: 'b'