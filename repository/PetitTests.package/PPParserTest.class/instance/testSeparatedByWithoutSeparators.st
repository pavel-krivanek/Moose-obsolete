testing
testSeparatedByWithoutSeparators
	| parser |
	parser := ($a asParser separatedBy: $b asParser)
		withoutSeparators.
	
	self assert: parser parse: 'a' to: #($a).
	self assert: parser parse: 'aba' to: #($a $a).
	self assert: parser parse: 'ababa' to: #($a $a $a).
	
	self assert: parser parse: 'ab' to: #($a) end: 1.
	self assert: parser parse: 'abab' to: #($a $a) end: 3.
	self assert: parser parse: 'ac' to: #($a) end: 1.
	self assert: parser parse: 'abac' to: #($a $a) end: 3.
	
	self assert: parser fail: ''.
	self assert: parser fail: 'c'