testing
testMaxLazy
	| parser |
	parser := #word asParser max: 2 lazy: #digit asParser.
	
	self assert: parser fail: ''.
	self assert: parser fail: 'abc'.
	
	self assert: parser parse: '1' to: #() end: 0.
	self assert: parser parse: 'a1' to: #($a) end: 1.
	self assert: parser parse: 'ab1' to: #($a $b) end: 2.
	self assert: parser fail: 'abc1'.
	
	self assert: parser parse: '12' to: #() end: 0.
	self assert: parser parse: 'a12' to: #($a) end: 1.
	self assert: parser parse: 'ab12' to: #($a $b) end: 2.
	self assert: parser fail: 'abc12'.
	
	self assert: parser parse: '123' to: #() end: 0.
	self assert: parser parse: 'a123' to: #($a) end: 1.
	self assert: parser parse: 'ab123' to: #($a $b) end: 2.
	self assert: parser fail: 'abc123'