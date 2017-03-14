testing
testSequence
	| parser |
	parser := $a asParser , $b asParser.
	
	self assert: parser parse: 'ab' to: #($a $b).
	
	self assert: parser parse: 'aba' to: #($a $b) end: 2.
	self assert: parser parse: 'abb' to: #($a $b) end: 2.
	
	self assert: parser fail: ''.
	self assert: parser fail: 'a'.
	self assert: parser fail: 'aa'.
	self assert: parser fail: 'ba'.
	self assert: parser fail: 'bab'