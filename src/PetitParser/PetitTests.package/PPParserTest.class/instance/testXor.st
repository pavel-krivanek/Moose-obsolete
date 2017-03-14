testing
testXor
	| parser |
	parser := ($a asParser / $b asParser)
			|  ($b asParser / $c asParser).
	
	self assert: parser parse: 'a' to: $a.
	self assert: parser parse: 'c' to: $c.
	
	self assert: parser fail: ''.
	self assert: parser fail: 'b'.
	self assert: parser fail: 'd'.
	
	" truly symmetric "
	parser := ($b asParser / $c asParser)
			|  ($a asParser / $b asParser).
	
	self assert: parser parse: 'a' to: $a.
	self assert: parser parse: 'c' to: $c.
	
	self assert: parser fail: ''.
	self assert: parser fail: 'b'.
	self assert: parser fail: 'd'