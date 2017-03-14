testing
testDelimitedByWithoutSeparators
	| parser |
	parser := ($a asParser delimitedBy: $b asParser)
		withoutSeparators.
	
	self assert: parser parse: 'a' to: #($a).
	self assert: parser parse: 'aba' to: #($a $a).
	self assert: parser parse: 'ababa' to: #($a $a $a).

	self assert: parser parse: 'ab' to: #($a).
	self assert: parser parse: 'abab' to: #($a $a).
	self assert: parser parse: 'ababab' to: #($a $a $a).
	
	self assert: parser parse: 'ac' to: #($a) end: 1.
	self assert: parser parse: 'abc' to: #($a) end: 2.
	self assert: parser parse: 'abac' to: #($a $a) end: 3.
	self assert: parser parse: 'ababc' to: #($a $a) end: 4.
	
	self assert: parser fail: ''.
	self assert: parser fail: 'b'.
	self assert: parser fail: 'c'