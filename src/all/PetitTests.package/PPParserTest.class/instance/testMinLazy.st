testing
testMinLazy
	| parser |
	parser := #word asParser min: 2 lazy: #digit asParser.
	
	self assert: parser fail: ''.
	self assert: parser fail: 'abcde'.
	
	self assert: parser fail: '1'.
	self assert: parser fail: 'a1'.
	self assert: parser parse: 'ab1' to: #($a $b) end: 2.
	self assert: parser parse: 'abc1' to: #($a $b $c) end: 3.
	self assert: parser parse: 'abcd1' to: #($a $b $c $d) end: 4.
	self assert: parser parse: 'abcde1' to: #($a $b $c $d $e) end: 5.
	
	self assert: parser fail: '12'.
	self assert: parser parse: 'a12' to: #($a $1) end: 2.
	self assert: parser parse: 'ab12' to: #($a $b) end: 2.
	self assert: parser parse: 'abc12' to: #($a $b $c) end: 3.
	self assert: parser parse: 'abcd12' to: #($a $b $c $d) end: 4.
	self assert: parser parse: 'abcde12' to: #($a $b $c $d $e) end: 5.
	
	self assert: parser parse: '123' to: #($1 $2) end: 2.
	self assert: parser parse: 'a123' to: #($a $1) end: 2.
	self assert: parser parse: 'ab123' to: #($a $b) end: 2.
	self assert: parser parse: 'abc123' to: #($a $b $c) end: 3.
	self assert: parser parse: 'abcd123' to: #($a $b $c $d) end: 4.
	self assert: parser parse: 'abcde123' to: #($a $b $c $d $e) end: 5.
	
	self assert: parser parse: '1234' to: #($1 $2) end: 2.
	self assert: parser parse: 'a1234' to: #($a $1) end: 2.
	self assert: parser parse: 'ab1234' to: #($a $b) end: 2.
	self assert: parser parse: 'abc1234' to: #($a $b $c) end: 3.
	self assert: parser parse: 'abcd1234' to: #($a $b $c $d) end: 4.
	self assert: parser parse: 'abcde1234' to: #($a $b $c $d $e) end: 5